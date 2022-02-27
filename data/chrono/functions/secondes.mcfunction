scoreboard players add secondes chrono 1
title @a[tag=incourse] actionbar ["",{"score":{"name":"heures","objective":"chrono"}},{"text":":"},{"score":{"name":"minutes","objective":"chrono"}},{"text":":"},{"score":{"name":"secondes","objective":"chrono"}}]
schedule function chrono:secondes 1s