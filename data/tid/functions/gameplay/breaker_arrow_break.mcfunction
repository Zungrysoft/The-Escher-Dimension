#Destroy the spawner and track this so only one spawner is broken
execute if block ~ ~ ~ spawner run scoreboard players set temp72 value 1
execute if block ~ ~ ~ spawner run setblock ~ ~ ~ air destroy
