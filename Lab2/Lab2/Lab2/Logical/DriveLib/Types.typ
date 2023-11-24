
TYPE
	EN_DoorStates : 
		(
		ST_INIT := 0,
		ST_UNKNOWN := 1,
		ST_OPEN := 2,
		ST_CLOSE := 6,
		ST_ACC_POS := 3,
		ST_ACC_NEG := 7,
		ST_POS := 4,
		ST_NEG := 8,
		ST_DEC_POS := 5,
		ST_DEC_NEG := 9
		);
	driveComands : 
		(
		CMD_SWITCHED_ON := 7,
		CMD_DISABLE_VOLTAGE := 0,
		CMD_ENABLED := 15,
		CMD_SHUTDOWN := 6,
		STATE_READY := 33,
		STATE_DISABLED := 64,
		STATE_SWITCHED_ON := 35
		);
END_TYPE
