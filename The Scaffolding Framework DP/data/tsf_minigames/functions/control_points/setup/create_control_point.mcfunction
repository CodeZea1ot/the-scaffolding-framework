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

summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["unclaimed_control_point", "control_point"],CustomName:'{"text":"Unclaimed Control Point","color":"white"}'}
scoreboard players set @e[tag=unclaimed_control_point,distance=..2] tsf_MGCtrlPntTmr 200