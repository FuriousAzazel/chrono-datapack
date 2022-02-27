execute as @a[scores={set_start_chrono=1..}] at @s run function chrono:setstart
execute as @a[scores={remove_start_chrono=1..}] at @s run function chrono:removestart
execute as @a[scores={set_checkpoint_chrono=1..}] at @s run function chrono:setcheckpoint
execute as @a[scores={remove_checkpoint_chrono=1..}] at @s run function chrono:removecheckpoint
scoreboard players enable @a set_start_chrono
scoreboard players enable @a remove_start_chrono
scoreboard players enable @a set_checkpoint_chrono
scoreboard players enable @a remove_checkpoint_chrono
execute at @e[type=marker,tag=startchrono] if entity @a[distance=0..20,nbt={SelectedItem:{id:"minecraft:stick"}}] run particle minecraft:happy_villager ~ ~ ~ 0.1 0.5 0.1 1 1 normal
execute at @e[type=marker,tag=checkpointchrono] if entity @a[distance=0..20,nbt={SelectedItem:{id:"minecraft:stick"}}] run particle minecraft:wax_on ~ ~ ~ 0.1 0.5 0.1 1 1 normal
execute at @e[type=marker,tag=startchrono] as @a if entity @a[distance=0..1,tag=!incourse] run function chrono:startplayer