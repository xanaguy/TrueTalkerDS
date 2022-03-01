
//-----------------------------------------------------
local PANIC = 0
local TANK = 1
local DELAY = 2
//-----------------------------------------------------

DirectorOptions <-
{
	//-----------------------------------------------------

	 D_CustomFinale_StageCount = 8
	 
	 D_CustomFinale1 = PANIC
	 D_CustomFinaleValue1 = 2
	 
	 D_CustomFinale2 = DELAY
	 D_CustomFinaleValue2 = 12
	 
	 D_CustomFinale3 = TANK
	 D_CustomFinaleValue3 = 1
	 
	 D_CustomFinale4 = DELAY
	 D_CustomFinaleValue4 = 12
	 
	 D_CustomFinale5 = PANIC
	 D_CustomFinaleValue5 = 2
	 
	 D_CustomFinale6 = DELAY
	 D_CustomFinaleValue6 = 12
	 
	 D_CustomFinale7 = TANK
	 D_CustomFinaleValue7 = 1

	 D_CustomFinale8 = DELAY
	 D_CustomFinaleValue8 = RandomInt(10,15)
	 
//SpecialRespawnInterval = 20
//ZombieSpawnInFog = true

	//-----------------------------------------------------
}

if ( Director.GetGameMode() == "versus" )
{
	DirectorOptions.D_CustomFinaleValue7 = 1
}

function OnBeginCustomFinaleStage( num, type )
{
	//printl( "Beginning custom finale stage " + num + " of type " + type );
	
	if ( type == 2 )
		EntFire( "orator_plane_radio", "SpeakResponseConcept", "plane_radio_intransit" );
}