
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "MotorCtrl.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */

void FB_Regulator(struct FB_Regulator* inst)
{
	inst->dt = d_t;
	inst->a = inst->e * inst->k_p;
	inst->b = inst->e * inst->k_i;
	
	inst->a = inst->a > inst->max_abs_value ? inst->max_abs_value : inst->a;
	inst->a = inst->a < -inst->max_abs_value ? -inst->max_abs_value : inst->a;
	
	inst->integrator.in = inst->b + inst->last_sum;
	FB_Integrator(&inst->integrator);
	
	inst->sum = inst->a + inst->integrator.out;
	inst->u = inst->sum;
	inst->u = inst->u > inst->max_abs_value ? inst->max_abs_value : inst->u;
	inst->u = inst->u < -inst->max_abs_value ? -inst->max_abs_value : inst->u;
	
	inst->last_sum = inst->u - inst->sum;
}
