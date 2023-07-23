namespace Bar
{
void TriggerMe(CBaseEntity@ activator, CBaseEntity@ caller, USE_TYPE useType, float value)
{
	log::info("I'm triggered too");
}
}
