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

#Load modules by calling their run.mcfunction file

#Invoke Modules
function tsf_r_click:run
function tsf_raycast:run
function tsf_custom_weapons:run
function tsf_custom_mobs:run
function tsf_economy:run
function tsf_banks:run

#Other modules can be enabled or disabled here. Consider the importance of execution order.
#A module hooking into tsf_r_click should be invoked after tsf_r_click, etc...
#tsf_some_module:run


#If a module requires a reset function, call it here at the end of the main loop
function tsf_r_click:reset
function tsf_raycast:reset