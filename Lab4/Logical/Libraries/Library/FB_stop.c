
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void FB_stop(struct FB_stop* inst)
{
	switch (inst->State)
	{
		case Idle_stop:
			{
				if(inst->enable)
				{
					inst->done = 0;
					inst->State = StopY_stop;
				}
			
				break;
			}
		case StopY_stop: 
			{
				inst->Stop.Axis = inst->AxisY;
				inst->Stop.Execute = 1;
				inst->Stop.Deceleration = 6000;
				
				if (inst->Stop.Done)
				{
					inst->State = StopZ_stop;
				}
				break;
			}
		case StopZ_stop: 
			{
				inst->Stop.Axis = inst->AxisZ;
				inst->Stop.Execute = 1;
				inst->Stop.Deceleration = 6000;
				
				if (inst->Stop.Done)
				{
					inst->State = PowerOffY_stop;
				}
				break;
			}
		case PowerOffY_stop:
			{
				inst->Power.Axis = inst->AxisY;
				inst->Power.Enable = 0;
				inst->State = PowerOffZ_stop;
			
				break;
			}
		case PowerOffZ_stop:
			{
				inst->Power.Axis = inst->AxisZ;
				inst->Power.Enable = 0;
				inst->State = Done_stop;
				break;
			}
		case Done_stop:
			{
				inst->done = 1;
				if(inst->done)
				{
					inst->enable = 0;
					inst->State = Idle_stop;
				}
			
				break;
			}
	}
	MC_Power(&inst->Power);
}
