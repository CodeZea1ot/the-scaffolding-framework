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

#replenish capture countdown if no enemies nearby
execute as @e[tag=red_control_point,scores={tsf_MGCtrlPntTmr=..199}] at @s unless entity @a[tag=tsf_MGCtrlPntBlue,distance=..6] run scoreboard players add @s tsf_MGCtrlPntTmr 1
execute as @e[tag=blue_control_point,scores={tsf_MGCtrlPntTmr=..199}] at @s unless entity @a[tag=tsf_MGCtrlPntRed,distance=..6] run scoreboard players add @s tsf_MGCtrlPntTmr 1
execute as @e[tag=unclaimed_control_point,scores={tsf_MGCtrlPntTmr=..199}] at @s unless entity @a[distance=..6] run scoreboard players add @s tsf_MGCtrlPntTmr 1


#reduce capture countdown if enemies nearby
execute as @e[tag=red_control_point,scores={tsf_MGCtrlPntTmr=1..}] at @s if entity @a[tag=tsf_MGCtrlPntBlue,distance=..6] run scoreboard players remove @s tsf_MGCtrlPntTmr 1
execute as @e[tag=blue_control_point,scores={tsf_MGCtrlPntTmr=1..}] at @s if entity @a[tag=tsf_MGCtrlPntRed,distance=..6] run scoreboard players remove @s tsf_MGCtrlPntTmr 1
execute as @e[tag=unclaimed_control_point,scores={tsf_MGCtrlPntTmr=1..}] at @s if entity @a[distance=..6] run scoreboard players remove @s tsf_MGCtrlPntTmr 1