
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	fb_motor1.Tm = 0.0149;
	fb_motor1.ke =  5.26;
	fb_motor1.u = 0.1;
	
	fb_motor2.Tm =  0.0149;
	fb_motor2.ke = 5.26;
	fb_motor2.u = 0.1;
	
	
	
	regulator.k_i = 0.86;
	regulator.k_p = 0.26;
	regulator.max_abs_value = 24.0;
	
	speed = 0;
	counter = 0;
}
