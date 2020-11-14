#Place inital logs
fill ~ ~ ~ ~ ~6 ~ jungle_log

#Remove grass underneath
setblock ~ ~-1 ~ dirt

#Decide on the height
scoreboard players set choice value 0
execute if predicate tid:random_50 run scoreboard players add choice value 1
execute if predicate tid:random_50 if block ~ ~10 ~ air run scoreboard players add choice value 2

execute if score choice value matches 0 positioned ~ ~4 ~ run function tid:dungeon/nature/biome/feature/jungle_tree_top
execute if score choice value matches 1 positioned ~ ~5 ~ run function tid:dungeon/nature/biome/feature/jungle_tree_top
execute if score choice value matches 2 positioned ~ ~6 ~ run function tid:dungeon/nature/biome/feature/jungle_tree_top
execute if score choice value matches 3 positioned ~ ~7 ~ run function tid:dungeon/nature/biome/feature/jungle_tree_top
