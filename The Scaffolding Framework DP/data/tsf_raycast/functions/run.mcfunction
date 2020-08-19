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

#The module initialization objective is created
scoreboard objectives add tsf_Raycast dummy

#Init module only once
execute unless score $init tsf_Raycast matches 1 run function tsf_raycast:scripts/init


#The rest of your module's function calls here...


#Optional: `tsf_raycast:1b` tag marks the player as raycasting to ensure they are not hit by their own ray. Removed in reset.mcfunction
tag @a[scores={tsf_rClickCOAS=1..},nbt={SelectedItem:{tag:{tsf_raycast:1b}}}] add tsf_raycasting
tag @a[scores={tsf_rClickWFOAS=1..},nbt={SelectedItem:{tag:{tsf_raycast:1b}}}] add tsf_raycasting

#ray specific `tsf_raycast_DEFINITION_NAME_HERE: 1b` tag specifies which ray to invoke
execute as @a[scores={tsf_rClickWFOAS=1..},nbt={SelectedItem:{tag:{tsf_raycast_example:1b}}}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ air run function tsf_raycast:ray_definitions/example