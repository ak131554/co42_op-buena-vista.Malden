

	//Spec_Loudout, edit Redd

	_defaulTarn = "fleck"; //fleck, fleck_idz, trope, trope_idz, winter, winter_idz
	_isFalli = false; //true, false
	_isGreni = false; //true, false

	if(isServer) then 
	{

		{
			
			if(side _x == west) then 
			{

				comment "assign loadout to AI only (excellent for testing purposes)";
				_loadout = _x getVariable ["loadout",""];
				_tarn = _x getVariable ["tarn",_defaulTarn];
				_class = typeOf _x;
				[_x,_loadout,_tarn,_class,_isFalli,_isGreni] call Redd_fnc_loadout_base;
			
			} 
			else 
			{
				[objNull,_x] spawn epsilon_setSkillAndHe;
			};

		} 
		foreach  allUnits - allPlayers;
	};

	if(hasInterface) then 
	{
		
		_loadout = player getVariable ["loadout",""];
		_tarn = player getVariable ["tarn",_defaulTarn];
		_class = typeOf player;
		[player,_loadout,_tarn,_class,_isFalli,_isGreni] call Redd_fnc_loadout_base;

	};

	true