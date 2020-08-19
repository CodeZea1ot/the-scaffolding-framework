particle barrier ~ ~ ~ 0 0 0 0.1 1
execute as @e[tag=!tsf_raycasting,type=!#tsf_raycast:raycast_example_ban_list,distance=..2] at @s run say I was hit by the example ray!
execute if block ~ ~ ~ air positioned ^ ^-1.5 ^ unless entity @e[distance=..0.75] positioned ^ ^ ^1.5 positioned ^ ^1.5 ^ run function tsf_raycast:ray_definitions/example
