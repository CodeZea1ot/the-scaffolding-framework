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

scoreboard players add @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] tsf_currency 1
playsound minecraft:entity.experience_orb.pickup master @s[nbt={Inventory:[{id:"minecraft:emerald"}]}]
clear @s minecraft:emerald 1