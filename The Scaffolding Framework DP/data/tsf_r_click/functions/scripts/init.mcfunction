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



#Add the module's scoreboard objectives
function tsf_r_click:scripts/add_objectives

#Optional init confirmation message
tellraw @a [{"text":"Right Click Detection Module Initialized","color":"yellow"}]

#Set the initialization objective value to 1, which ensures this function is only called once
scoreboard players set $init tsf_RClick 1
