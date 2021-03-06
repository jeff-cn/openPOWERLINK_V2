/**
********************************************************************************
\file   sim-timer.h

\brief  Include file for simulation interface providing user timer functions

*******************************************************************************/

/*------------------------------------------------------------------------------
Copyright (c) 2016, B&R Industrial Automation GmbH
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the copyright holders nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
------------------------------------------------------------------------------*/
#ifndef _INC_sim_timer_H_
#define _INC_sim_timer_H_

//------------------------------------------------------------------------------
// includes
//------------------------------------------------------------------------------
#include <sim.h>

//------------------------------------------------------------------------------
// const defines
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// typedef
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// function prototypes
//------------------------------------------------------------------------------
#ifdef __cplusplus
extern "C"
{
#endif

OPLKDLLEXPORT BOOL  sim_setTimerFunctions(tSimulationInstanceHdl simhdl,
                                          tTimerFunctions functions);
OPLKDLLEXPORT void  sim_unsetTimerFunctions(void);
OPLKDLLEXPORT void  sim_userTimerCallback(tTimerHdl timerHdl_p,
                                          tTimerArg argument_p);

tOplkError          sim_initTimer(void);
tOplkError          sim_exitTimer(void);
tOplkError          sim_setTimer(tTimerHdl* pTimerHdl_p,
                                 ULONG timeInMs_p,
                                 tTimerArg argument_p);
tOplkError          sim_modifyTimer(tTimerHdl* pTimerHdl_p,
                                    ULONG timeInMs_p,
                                    tTimerArg argument_p);
tOplkError          sim_deleteTimer(tTimerHdl* pTimerHdl_p);
BOOL                sim_isTimerActive(tTimerHdl timerHdl_p);

#ifdef __cplusplus
}
#endif

#endif /* _INC_sim_timer_H_ */
