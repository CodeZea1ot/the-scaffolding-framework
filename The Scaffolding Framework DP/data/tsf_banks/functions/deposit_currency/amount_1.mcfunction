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


#This function allows a player to deposit 1 of the enabled currency type/denomination into his account

#---------------------------------------------------------------------------
# If Emerald Item Set is enabled...
#---------------------------------------------------------------------------

execute if score cz-currency-type cz-currency-type matches 0 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

execute if score cz-currency-type cz-currency-type matches 0 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players add @s cz-currency 1

execute if score cz-currency-type cz-currency-type matches 0 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run clear @s minecraft:emerald 1

#---------------------------------------------------------------------------



#---------------------------------------------------------------------------
# If Gold Item Set is enabled...
#---------------------------------------------------------------------------

execute if score cz-currency-type cz-currency-type matches 1 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

execute if score cz-currency-type cz-currency-type matches 1 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run scoreboard players add @s cz-currency 1

execute if score cz-currency-type cz-currency-type matches 1 run execute as @p if entity @s[nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run clear @s minecraft:gold_nugget 1

#---------------------------------------------------------------------------
