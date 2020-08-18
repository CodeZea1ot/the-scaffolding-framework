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

#This function allows a player to withdraw 32 of the enabled currency type/denomination from his account

#---------------------------------------------------------------------------
# If Emerald Item Set is enabled...
#---------------------------------------------------------------------------

execute if score cz-currency-type cz-currency-type matches 0 run execute as @p if entity @s[scores={cz-currency=32..}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

execute if score cz-currency-type cz-currency-type matches 0 run execute as @p if entity @s[scores={cz-currency=32..}] run execute as @s run give @s minecraft:emerald 32

execute if score cz-currency-type cz-currency-type matches 0 run execute as @p if entity @s[scores={cz-currency=32..}] run scoreboard players remove @s cz-currency 32

#---------------------------------------------------------------------------



#---------------------------------------------------------------------------
# If Gold Item Set is enabled...
#---------------------------------------------------------------------------

execute if score cz-currency-type cz-currency-type matches 1 run execute as @p if entity @s[scores={cz-currency=32..}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

execute if score cz-currency-type cz-currency-type matches 1 run execute as @p if entity @s[scores={cz-currency=32..}] run execute as @s run give @s minecraft:gold_nugget 32

execute if score cz-currency-type cz-currency-type matches 1 run execute as @p if entity @s[scores={cz-currency=32..}] run scoreboard players remove @s cz-currency 32

#---------------------------------------------------------------------------
