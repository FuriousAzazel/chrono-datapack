execute if entity @s[tag=checkpoint] run tellraw @a[tag=incourse] ["",{"selector":"@s","color":"yellow"},{"text":" à termininé la course en ","color":"yellow"},{"score":{"name":"minutes","objective":"chrono"},"color":"yellow"},{"text":" minutes et en ","color":"yellow"},{"score":{"name":"secondes","objective":"chrono"},"color":"yellow"},{"text":" secondes !","color":"yellow"}]
tag @s remove checkpoint
schedule function chrono:reset 30s replace
