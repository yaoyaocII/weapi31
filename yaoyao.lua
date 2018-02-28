local jass=require 'jass.common'
local japi=require 'jass.japi'
function Trig_1Actions takes nothing returns nothing
  jass.DisplayTextToPlayer(jass.GetLocalPlayer(),0,0,"欢迎进入游戏，预祝大家游戏愉快。。")
endfunction

//===========================================================================
function InitTrig_1 takes nothing returns nothing
    set gg_trg_1 = CreateTrigger()
#ifdef DEBUG
    call jass.YDWESaveTriggerName(gg_trg_1, "1")
#endif
    call jass.TriggerRegisterTimerEventSingle( gg_trg_1, 1.00 )
    call jass.TriggerAddAction(gg_trg_1, function Trig_1Actions)
endfunction


end
