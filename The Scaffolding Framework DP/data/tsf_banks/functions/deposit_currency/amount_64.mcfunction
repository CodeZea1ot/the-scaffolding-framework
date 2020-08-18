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

#This function allows a player to deposit 64 of the enabled currency type/denomination into his account

#---------------------------------------------------------------------------
# If Emerald Item Set is enabled...
#---------------------------------------------------------------------------

execute if score cz-currency-type cz-currency-type matches 0 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:64b}]}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

execute if score cz-currency-type cz-currency-type matches 0 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:64b}]}] run scoreboard players add @s cz-currency 64

execute if score cz-currency-type cz-currency-type matches 0 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:emerald",Count:64b}]}] run clear @s minecraft:emerald 64

#---------------------------------------------------------------------------



#---------------------------------------------------------------------------
# If Gold Item Set is enabled...
#---------------------------------------------------------------------------

execute if score cz-currency-type cz-currency-type matches 1 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget",Count:64b}]}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

execute if score cz-currency-type cz-currency-type matches 1 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget",Count:64b}]}] run scoreboard players add @s cz-currency 64

execute if score cz-currency-type cz-currency-type matches 1 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget",Count:64b}]}] run clear @s minecraft:gold_nugget 64

#---------------------------------------------------------------------------
