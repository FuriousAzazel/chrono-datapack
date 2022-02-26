execute as @a[scores={set_start_chrono=1..}] at @s run function chrono:setstart
scoreboard players enable @a set_start_chrono
execute at @e[type=marker,tag=startchrono] run particle minecraft:happy_villager ~ ~ ~ 0.1 0.5 0.1 1 1 normal