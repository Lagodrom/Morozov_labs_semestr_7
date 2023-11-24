
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _CYCLIC ProgramCyclic(void)
{
	FB_DoorStateMashine(&doorSM);
	motorSM.speed = doorSM.speed;
	FB_DriveStateMashine(&motorSM);
	ledSM.state = doorSM.state;
	FB_LedStateMashine(&ledSM);
}
