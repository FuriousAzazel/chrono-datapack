scoreboard objectives add set_start_chrono trigger
scoreboard objectives add remove_start_chrono trigger
scoreboard objectives add set_checkpoint_chrono trigger
scoreboard objectives add remove_checkpoint_chrono trigger
scoreboard objectives add set_anticheat_chrono trigger
scoreboard objectives add remove_anticheat_chrono trigger
scoreboard objectives add help_fr trigger
scoreboard objectives add help_en trigger
scoreboard objectives add chrono dummy
scoreboard objectives add quitte minecraft.custom:minecraft.leave_game
scoreboard players set secondes chrono 0
scoreboard players set minutes chrono 0
scoreboard players set heures chrono 0
tag @a remove incourse
tag @a remove checkpoint
tellraw @a[tag=staff] [{"text":"le datapack","color":"aqua"},{"text":" "},{"text":"LAPALMCHRONO","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Datapack créé par "},{"text":"FuriousAzazel","bold":true,"color":"gold"}]}},{"text":" à bien été rechargé","color":"aqua"}]