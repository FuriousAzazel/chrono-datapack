bossbar set minecraft:chrono name ["",{"score":{"name":"heures","objective":"chrono"}},{"text":":"},{"score":{"name":"minutes","objective":"chrono"}},{"text":":"},{"score":{"name":"secondes","objective":"chrono"}}]
scoreboard players add secondes chrono 1
schedule function chrono:secondes 1s