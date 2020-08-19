###################################################################
#                                                                 #
# This project was generated using a tool created by Code_Zealot  #
#                                                                 #
#     Website: https://codezealot.com                             #
#     Channel: https://youtube.com/CodeZealot                     #
#     Twitter: @CodeZealotTuts                                    #
#                                                                 #
# --------------------------------------------------------------- #
#                         DATAPACK INFO                           #
# --------------------------------------------------------------- #
#                                                                 #
#     Author: Code_Zealot                                         #
#     URL: Listed Above                                           #
#                                                                 #
###################################################################

data merge entity @s {CustomNameVisible:1b,Tags:["red_control_point", "control_point"],CustomName:'{"text":"Red Team","color":"red"}'}
scoreboard players set @s tsf_MGCtrlPntTmr 200
title @a[distance=..6,tag=tsf_MGCtrlPntRed] title {"text":"control_point Captured!","color":"green"}
title @a[distance=..6,tag=tsf_MGCtrlPntBlue] title {"text":"control_point Lost!","color":"yellow"}
playsound minecraft:block.beacon.power_select master @a[distance=..6,tag=tsf_MGCtrlPntRed] ~ ~ ~ 10 1.0