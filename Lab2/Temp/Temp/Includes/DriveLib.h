/* Automation Studio generated header file */
/* Do not edit ! */
/* DriveLib  */

#ifndef _DRIVELIB_
#define _DRIVELIB_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef enum EN_DoorStates
{	ST_INIT = 0,
	ST_UNKNOWN = 1,
	ST_OPEN = 2,
	ST_CLOSE = 6,
	ST_ACC_POS = 3,
	ST_ACC_NEG = 7,
	ST_POS = 4,
	ST_NEG = 8,
	ST_DEC_POS = 5,
	ST_DEC_NEG = 9
} EN_DoorStates;

typedef enum driveComands
{	CMD_SWITCHED_ON = 7,
	CMD_DISABLE_VOLTAGE = 0,
	CMD_ENABLED = 15,
	CMD_SHUTDOWN = 6,
	STATE_READY = 33,
	STATE_DISABLED = 64,
	STATE_SWITCHED_ON = 35
} driveComands;

typedef struct FB_DriveStateMashine
{
	/* VAR_INPUT (analog) */
	unsigned short state;
	/* VAR_OUTPUT (analog) */
	unsigned short command;
	signed short speed;
	/* VAR_INPUT (digital) */
	plcbit enable;
} FB_DriveStateMashine_typ;

typedef struct FB_DoorStateMashine
{
	/* VAR_INPUT (analog) */
	unsigned short state;
	/* VAR_OUTPUT (analog) */
	signed short speed;
	/* VAR_INPUT (digital) */
	plcbit sw1;
	plcbit sw2;
	plcbit sw3;
	plcbit sw4;
	plcbit direction;
	/* VAR (digital) */
	plcbit swo1;
	plcbit swo2;
	plcbit swo3;
	plcbit swo4;
} FB_DoorStateMashine_typ;

typedef struct FB_LedStateMashine
{
	/* VAR_INPUT (analog) */
	unsigned short state;
	/* VAR_OUTPUT (analog) */
	signed short timer;
	/* VAR_OUTPUT (digital) */
	plcbit led1;
	plcbit led2;
	plcbit led3;
	plcbit led4;
} FB_LedStateMashine_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void FB_DriveStateMashine(struct FB_DriveStateMashine* inst);
_BUR_PUBLIC void FB_DoorStateMashine(struct FB_DoorStateMashine* inst);
_BUR_PUBLIC void FB_LedStateMashine(struct FB_LedStateMashine* inst);


#ifdef __cplusplus
};
#endif
#endif /* _DRIVELIB_ */

