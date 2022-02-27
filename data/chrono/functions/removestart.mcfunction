execute at @s align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=marker,tag=startchrono,limit=1,distance=0..1,sort=nearest]
tellraw @s [{"text":"Vous avez retiré le start","color":"lime"}]
scoreboard players reset @s remove_start_chrono