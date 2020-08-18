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
scoreboard objectives add tsf_Economy dummy

#Init module only once
execute unless score $init tsf_Economy matches 1 run function tsf_economy:scripts/init


#The rest of your module's function calls here...
scoreboard players add @a tsf_currency 0