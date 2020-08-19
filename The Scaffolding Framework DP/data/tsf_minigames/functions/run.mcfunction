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
scoreboard objectives add tsf_Minigames dummy

#Init module only once
execute unless score $init tsf_Minigames matches 1 run function tsf_minigames:scripts/init


#The rest of your module's function calls here...

#Enable MiniGames
function tsf_minigames:control_points/run