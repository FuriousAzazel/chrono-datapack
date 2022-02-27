execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,distance=..0.5] run summon marker ~ ~ ~ {Tags:["anticheatchrono"]}
tellraw @s [{"text":"Vous avez ajouté un anticheat","color":"green"}]
scoreboard players reset @s set_anticheat_chrono