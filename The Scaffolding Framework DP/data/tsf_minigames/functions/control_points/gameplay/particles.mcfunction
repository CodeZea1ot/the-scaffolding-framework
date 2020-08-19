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

execute as @e[tag=control_point] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=blue_control_point] at @s if entity @a[tag=red,distance=..6] run particle minecraft:crit ^ ^.5 ^1
execute as @e[tag=red_control_point] at @s if entity @a[tag=blue,distance=..6] run particle minecraft:crit ^ ^.5 ^1
execute as @e[tag=unclaimed_control_point] at @s if entity @a[distance=..6] run particle minecraft:composter ^ ^.5 ^1