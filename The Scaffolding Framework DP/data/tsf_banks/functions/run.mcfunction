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
scoreboard objectives add tsf_Banks dummy

#Init module only once
execute unless score $init tsf_Banks matches 1 run function tsf_banks:scripts/init


#The rest of your module's function calls here...


function tsf_banks/settings/location_particles

execute as @a at @s if entity @e[tag=tsf_banks_withdraw,distance=..2] run function tsf_banks:withdraw_currency/withdraw_location
execute as @a at @s if entity @e[tag=tsf_banks_deposit,distance=..2] run function tsf_banks:deposit_currency/deposit_location