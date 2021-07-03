#Destroy the spawner and track this so only one spawner is broken
execute if score temp72 value matches 0 positioned ~ ~0 ~ run function tid:gameplay/breaker_arrow_break
execute if score temp72 value matches 0 positioned ~ ~-1 ~ run function tid:gameplay/breaker_arrow_break
execute if score temp72 value matches 0 positioned ~ ~1 ~ run function tid:gameplay/breaker_arrow_break
