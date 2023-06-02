"GameMenu"
{
	"1"
	{
		"label" "#GameUI_GameMenu_ResumeGame"
		"command" "ResumeGame"
		"OnlyInGame" "1"
	}
	"2"
	{
		"label" "#GameUI_GameMenu_Disconnect"
		"command" "Disconnect"
		"OnlyInGame" "1"
		"notsingle" "1"
	}
	"3"
	{
		"label" "#GameUI_CampaignSelect"
		"command" "engine disconnect; maxplayers 1; map hlu_campaignselect"
	}
	"4"
	{
		"label" "#GameUI_GameMenu_LeaveGame"
		"command" "Disconnect"
		"OnlyInGame" "1"
		"notmulti" "1"
	}
	"5"
	{
		"label" "#GameUI_GameMenu_PlayerList"
		"command" "OpenPlayerListDialog"
		"OnlyInGame" "1"
		"notsingle" "1"
	}
	"6"
	{
		"label" ""
		"command" ""
		"OnlyInGame" "1"
	}
	//"7"
	//{
	//	"label" "#GameUI_GameMenu_NewGame"
	//	"command" "OpenNewGameDialog"
	//	"notmulti" "1"
	//}
	"8"
	{
		"label" "#GameUI_GameMenu_LoadGame"
		"command" "OpenLoadGameDialog"
		"notmulti" "1"
	}
	"9"
	{
		"label" "#GameUI_GameMenu_SaveGame"
		"command" "OpenSaveGameDialog"
		"notmulti" "1"
		"OnlyInGame" "1"
	}
	"10"
	{
		"label" ""
		"command" ""
		"notmulti" "1"
	}
	"11"
	{
		"label" "#GameUI_GameMenu_FindServers"
		"command" "OpenServerBrowser"
		"notsingle" "1"
	}
	"12"
	{
		"label" "#GameUI_GameMenu_CreateServer"
		"command" "OpenCreateMultiplayerGameDialog"
		"notsingle" "1"
	}
//	"13"
//	{
//		"name" "LoadDemo"
//		"label" "#GameUI_GameMenu_PlayDemo"
//		"command" "OpenLoadDemoDialog"
//	}
	"14"
	{
		"label" ""
		"command" ""
		"notsingle" "1"
	}
	//"15"
	//{
	//	"label" "#GameUI_GameMenu_ChangeGame"
	//	"command" "OpenChangeGameDialog"
	//	"notsteam" "1"
	//	"notsingle" "1"
	//	"notmulti" "1"
	//}
	"16"
	{
		"label" "#GameUI_GameMenu_Options"
		"command" "OpenOptionsDialog"
	}
	"17"
	{
		"label" "#GameUI_GameMenu_Quit"
		"command" "Quit"
	}
}
