#include "maps/other.as"

ConCommand MyCommand("my_script_command", @MyCommandCallback);

void MyCommandCallback(CommandArgs@ args)
{
	log::info("Command callback: " + args.Count() + " arguments");
	
	for (int i = 0; i < args.Count(); ++i)
	{
		log::info("Argument " + i + ": " + args.Argument(i));
	}
}

ConVar MyOtherVar("my_script_var", "10", @MyVarCallback);

void MyVarCallback(ConVar@ var)
{
	log::info("Variable changed to " + var.String);
}

ConVar MyVar("my_other_script_var", "foo");

void ScriptInit()
{
	log::info("Hello World!");
	
	Events::Subscribe(@Callback);
	
	CustomEntities::RegisterType("foo", "Bar::Test");
	CustomEntities::RegisterType("foo", "Bar::Test2");
	
	Events::Subscribe(@MapInit);
	
	EventCallback eventCallback;
	
	Events::Subscribe(SayTextEventArgsHandler(@eventCallback.Callback));
	Events::Unsubscribe(SayTextEventArgsHandler(@eventCallback.Callback));
	
	State state;
	state.Data = "Hello World!";
	
	Scheduler.Schedule(ScheduledCallback(@state.Callback), 1.5, 3);
	//Scheduler.Schedule(null, 1.5, 3);
}

void MapInit(MapInitEventArgs@ args)
{
	log::info("Map initialized");
}

void Callback(SayTextEventArgs@ foo)
{
	log::info("Callback executed");
	log::info(foo.AllText);
	log::info(foo.Command);
}

class EventCallback
{
	void Callback(SayTextEventArgs@ foo)
	{
		log::info("Object Callback executed");
		log::info(foo.AllText);
		log::info(foo.Command);
	}
}

class State
{
	string Data;
	
	int Count = 1;

	void Callback()
	{
		log::info("Data is: " + Data + ", " + Count);
		++Count;
	}
}

namespace Bar
{
class Test : ScriptBaseEntity
{
	void OnCreate()
	{
		log::info("Self is " + ((@self is null) ? "null" : "not null"));
		log::info("BaseClass is " + ((@BaseClass is null) ? "null" : "not null"));
		
		log::info("Calling OnCreate");
	
		BaseClass.OnCreate();
		
		log::info("Called OnCreate");
	}

	bool KeyValue(const string& in key, const string& in value)
	{
		log::info("Keyvalue is " + key + " " + value);
		return true;
	}
	
	void Precache()
	{
		log::info("Precache called");
		self.PrecacheModel("models/scientist.mdl");
	}
	
	void Spawn()
	{
		self.Precache();
	
		log::info("Spawned");
		
		self.solid = SOLID_SLIDEBOX;
		self.movetype = MOVETYPE_STEP;
		self.SetModel("models/scientist.mdl");
		self.SetSize(VEC_HUMAN_HULL_MIN, VEC_HUMAN_HULL_MAX);
		
		SetThink(ThinkFunction(this.MyThink));
		self.nextthink = Globals.time + 0.1f;
		
		SetTouch(TouchFunction(this.MyTouch));
	}
	
	void MyThink()
	{
		log::info("Thinking at " + Globals.time);
		self.nextthink = Globals.time + 0.1f;
	}
	
	void MyTouch(CBaseEntity@ other)
	{
		log::info("Touched " + (other is null ? "unknown" : other.ClassName));
	}
}

class Test2 : ScriptBaseEntity
{
}

void TriggerMe(CBaseEntity@ activator, CBaseEntity@ caller, USE_TYPE useType, float value)
{
	// Count activation times based on activator.
	dictionary@ data = activator.UserData;
	
	int count = 0;
	data.get("count", count);
	
	++count;
	
	data.set("count", count);
	
	log::info("I've been triggered " + count + " times");
	
	CBaseEntity@ entity = Entities::FindEntityByClassname(null, "func_button");
	
	if (!(entity is null))
	{
		log::info("Found entity");
		
		// Explicit cast
		CBaseDelay@ button = cast<CBaseDelay>(entity);
		
		if (!(button is null))
		{
			log::info("Found button");
			
			// Implicit cast
			@entity = button;
		}
		else
		{
			log::info("Not a button");
		}
		
	}
	else
	{
		log::info("No entity found");
	}
}
}
