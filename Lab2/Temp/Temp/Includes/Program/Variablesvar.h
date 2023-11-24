/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1669195323_3_
#define _BUR_1669195323_3_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL struct FB_LedStateMashine ledSM;
_BUR_LOCAL struct FB_DriveStateMashine motorSM;
_BUR_LOCAL struct FB_DoorStateMashine doorSM;
_BUR_LOCAL enum EN_DoorStates stateMachine;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Program/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/DriveLib/DriveLib.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1669195323_3_ */

