schedule clear chrono:secondes
tellraw @a[tag=incourse] [{"text":"la course est terminée!","color":"yellow"}]
scoreboard players set secondes chrono 0
scoreboard players set minutes chrono 0
scoreboard players set heures chrono 0
tag @a remove incourse
tag @a remove checkpoint