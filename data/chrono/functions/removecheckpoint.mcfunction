execute at @s align xyz positioned ~0.5 ~ ~0.5 run kill @e[type=marker,tag=checkpointchrono,limit=1,distance=0..1,sort=nearest]
scoreboard players reset @s remove_checkpoint_chrono