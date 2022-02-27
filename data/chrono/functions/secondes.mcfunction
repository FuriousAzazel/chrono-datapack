scoreboard players add secondes chrono 1
execute if score secondes chrono matches 60.. run function chrono:minutes 
title @a[tag=incourse] actionbar ["",{"score":{"name":"heures","objective":"chrono"}},{"text":":"},{"score":{"name":"minutes","objective":"chrono"}},{"text":":"},{"score":{"name":"secondes","objective":"chrono"}}]
schedule function chrono:secondes 1s