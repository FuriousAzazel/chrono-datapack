#run function when player execute /trigger
execute as @a[scores={set_start_chrono=1..}] at @s run function chrono:setstart
execute as @a[scores={remove_start_chrono=1..}] at @s run function chrono:removestart
execute as @a[scores={set_checkpoint_chrono=1..}] at @s run function chrono:setcheckpoint
execute as @a[scores={remove_checkpoint_chrono=1..}] at @s run function chrono:removecheckpoint
execute as @a[scores={set_anticheat_chrono=1..}] at @s run function chrono:setanticheat
execute as @a[scores={remove_anticheat_chrono=1..}] at @s run function chrono:removeanticheat
execute as @a[scores={help_en=1..}] at @s run function chrono:helpen
execute as @a[scores={help_fr=1..}] at @s run function chrono:helpfr
execute as @a[scores={force_finish_chrono=1..}] at @s run function chrono:reset

#allow player use /trigger
scoreboard players enable @a set_start_chrono
scoreboard players enable @a remove_start_chrono
scoreboard players enable @a set_checkpoint_chrono
scoreboard players enable @a remove_checkpoint_chrono
scoreboard players enable @a set_anticheat_chrono
scoreboard players enable @a remove_anticheat_chrono
scoreboard players enable @a help_en
scoreboard players enable @a help_fr

#run particles with stick on checkpoint and start
execute at @e[type=marker,tag=startchrono] if entity @a[distance=0..20,nbt={SelectedItem:{id:"minecraft:clock"}}] run particle minecraft:happy_villager ~ ~ ~ 0.1 0.5 0.1 1 1 normal
execute at @e[type=marker,tag=checkpointchrono] if entity @a[distance=0..20,nbt={SelectedItem:{id:"minecraft:clock"}}] run particle minecraft:wax_on ~ ~ ~ 0.1 0.5 0.1 1 1 normal
execute at @e[type=marker,tag=anticheatchrono] if entity @a[distance=0..20,nbt={SelectedItem:{id:"minecraft:clock"}}] run particle minecraft:witch ~ ~ ~ 0.1 0.5 0.1 1 1 normal

#start chrono and add player in game when player walk on start
execute at @e[type=marker,tag=startchrono] as @a[distance=0..1] if entity @a[distance=0..1,tag=!incourse,tag=!checkpoint] run function chrono:startplayer

#give tag on player walk on checkpoint
execute at @e[type=marker,tag=checkpointchrono] as @a[distance=0..1] if entity @a[distance=0..1,tag=incourse] run function chrono:checkpointplayer

#finish race for player
execute at @e[type=marker,tag=startchrono] as @a[distance=0..1] if entity @a[distance=0..1,tag=incourse,tag=checkpoint] run function chrono:finishplayer

#remove tag checkpoint on player walk on anticheat
execute at @e[type=marker,tag=anticheatchrono] as @a[distance=0..1] if entity @a[distance=0..1,tag=incourse,tag=checkpoint] run function chrono:anticheat

#remove tag potential not remove with player deconected in game
execute as @a[scores={quitte=1..}] run tag @s remove incourse
execute as @a[scores={quitte=1..}] run tag @s remove checkpoint
execute as @a[scores={quitte=1..}] run scoreboard players reset @s quitte