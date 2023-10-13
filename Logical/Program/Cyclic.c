
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _CYCLIC ProgramCyclic(void)
{
	if(enable){
		if(counter == 250){
			speed = 0;
			counter = 0;
		}
		if(counter == 100){
			speed = 50;
		}
		counter++;
	
		regulator.e = speed - fb_motor1.w;
		FB_Regulator(&regulator);
		
		fb_motor1.u = regulator.u;
		FB_Motor(&fb_motor1);
		
		fb_motor2.u = speed*fb_motor2.ke;
		FB_Motor(&fb_motor2);

	}
}
