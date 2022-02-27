execute as @a[scores={set_start_chrono=1..}] at @s run function chrono:setstart
execute as @a[scores={remove_start_chrono=1..}] at @s run function chrono:removestart
scoreboard players enable @a set_start_chrono
scoreboard players enable @a remove_start_chrono
execute at @e[type=marker,tag=startchrono] if entity @a[distance=0..20,nbt={SelectedItem:{id:"minecraft:stick",tag:{CustomModelData:1}}}] run particle minecraft:happy_villager ~ ~ ~ 0.1 0.5 0.1 1 1 normal