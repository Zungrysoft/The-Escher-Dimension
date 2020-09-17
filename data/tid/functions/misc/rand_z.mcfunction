scoreboard players add zcount value 1
execute unless block ~ ~ ~ lava run setblock ~ ~ ~ cobblestone
#execute if block ~ ~ ~ lava run setblock ~ ~ ~ cobblestone
execute unless score zcount value matches 30.. positioned ~ ~ ~1 run function tid:misc/rand_z