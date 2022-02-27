execute at @s align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=marker,tag=anticheat,limit=1,distance=0..1,sort=nearest]
tellraw @s [{"text":"Vous avez retiré l'anticheat","color":"green"}]
scoreboard players reset @s remove_anticheat_chrono