execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,distance=..0.5] run summon marker ~ ~ ~ {Tags:["startchrono"]}
tellraw @s [{"text":"Vous avez ajouté un start","color":"green"}]
scoreboard players reset @s set_start_chrono