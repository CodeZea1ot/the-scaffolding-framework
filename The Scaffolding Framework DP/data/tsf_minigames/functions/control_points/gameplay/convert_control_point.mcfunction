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

#convert neutral notification
execute as @e[tag=red_control_point,scores={tsf_MGCtrlPntTmr=0}] at @s run title @a[distance=..6,tag=tsf_MGCtrlPntRed] title {"text":"Control Point Lost!","color":"red"}
execute as @e[tag=blue_control_point,scores={tsf_MGCtrlPntTmr=0}] at @s run title @a[distance=..6,tag=tsf_MGCtrlPntBlue] title {"text":"Control Point Lost!","color":"red"}

#convert marker to neutral
execute as @e[tag=red_control_point,scores={tsf_MGCtrlPntTmr=0}] at @s run function tsf_minigames:control_points/gameplay/make_neutral
execute as @e[tag=blue_control_point,scores={tsf_MGCtrlPntTmr=0}] at @s run function tsf_minigames:control_points/gameplay/make_neutral

#convert marker to faction
execute as @e[tag=unclaimed_control_point,scores={tsf_MGCtrlPntTmr=0}] at @s if entity @a[tag=tsf_MGCtrlPntBlue,distance=..6] run function tsf_minigames:control_points/gameplay/make_blue
execute as @e[tag=unclaimed_control_point,scores={tsf_MGCtrlPntTmr=0}] at @s if entity @a[tag=tsf_MGCtrlPntRed,distance=..6] run function tsf_minigames:control_points/gameplay/make_red