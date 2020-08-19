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

#Reward individual players honor points for their faction
execute as @e[tag=red_control_point] at @s run scoreboard players add @a[tag=tsf_MGCtrlPntRed] tsf_MGCtrlPnt 1
execute as @e[tag=blue_control_point] at @s run scoreboard players add @a[tag=tsf_MGCtrlPntBlue] tsf_MGCtrlPnt 1

#Set Faction Count to total of all players
scoreboard players set The_red_team tsf_MGCtrlPnt_f 0
scoreboard players set The_blue_team tsf_MGCtrlPnt_f 0

scoreboard players operation The_red_team tsf_MGCtrlPnt_f += @a[tag=tsf_MGCtrlPntRed] tsf_MGCtrlPnt
scoreboard players operation The_blue_team tsf_MGCtrlPnt_f += @a[tag=tsf_MGCtrlPntBlue] tsf_MGCtrlPnt


#/summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["blue_control_point"],CustomName:'{"text":"The blue","color":"red"}'}