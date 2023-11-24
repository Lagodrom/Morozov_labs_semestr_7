
{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_DriveStateMashine (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		state : {REDUND_UNREPLICABLE} UINT; (*Sostiyanie chastotnogo preobrazovatelya*)
		enable : {REDUND_UNREPLICABLE} BOOL; (*Signal raboti FunchBlock*)
	END_VAR
	VAR_OUTPUT
		command : {REDUND_UNREPLICABLE} UINT; (*Comand, podavayemaya na chastotniy preobrazovatel*)
		speed : {REDUND_UNREPLICABLE} INT; (*Zadannaya skorosti*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} FUNCTION_BLOCK FB_DoorStateMashine (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		state : {REDUND_UNREPLICABLE} UINT; (*sostoyanie chastotnogo preobrazovatelya*)
		sw1 : {REDUND_UNREPLICABLE} BOOL; (*Signal konc switch1*)
		sw2 : {REDUND_UNREPLICABLE} BOOL; (*Signal konc switch2*)
		sw3 : {REDUND_UNREPLICABLE} BOOL; (*Signal konc switch3*)
		sw4 : {REDUND_UNREPLICABLE} BOOL; (*Signal konc switch4*)
		direction : {REDUND_UNREPLICABLE} BOOL; (*comand, podavayemaya na chast preobr*)
	END_VAR
	VAR
		swo1 : BOOL; (*Old Signal konc switch1*)
		swo2 : BOOL; (*Old Signal konc switch2*)
		swo3 : BOOL; (*Old Signal konc switch3*)
		swo4 : BOOL; (*Old Signal konc switch4*)
	END_VAR
	VAR_OUTPUT
		speed : {REDUND_UNREPLICABLE} INT; (*zadannaya skorosty*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_LedStateMashine (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		state : {REDUND_UNREPLICABLE} UINT; (*sostoyaniye chast preobr*)
	END_VAR
	VAR_OUTPUT
		led1 : {REDUND_UNREPLICABLE} BOOL; (*Signal raboti FB*)
		led2 : {REDUND_UNREPLICABLE} BOOL; (*Signal raboti FB*)
		led3 : {REDUND_UNREPLICABLE} BOOL; (*Signal raboti FB*)
		led4 : {REDUND_UNREPLICABLE} BOOL; (*Signal raboti FB*)
		timer : {REDUND_UNREPLICABLE} INT; (*Zadannaya skorosty*)
	END_VAR
END_FUNCTION_BLOCK
