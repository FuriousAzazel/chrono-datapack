execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:["checkpointchrono"]}
tellraw @s [{"text":"Vous avez ajouté un checkpoint","color":"lime"}]
scoreboard players reset @s set_checkpoint_chrono