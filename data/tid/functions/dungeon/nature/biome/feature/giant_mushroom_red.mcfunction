#Place inital stem
fill ~ ~ ~ ~ ~3 ~ mushroom_stem[up=false,down=false]

#Remove mycelium underneath
setblock ~ ~-1 ~ dirt

#Decide on the height
scoreboard players set choice value 0
execute if predicate tid:random_50 run scoreboard players add choice value 1
execute if predicate tid:random_40 run scoreboard players add choice value 2

execute if score choice value matches 0 positioned ~ ~1 ~ run function tid:dungeon/nature/biome/feature/giant_mushroom_red_top
execute if score choice value matches 1 positioned ~ ~2 ~ run function tid:dungeon/nature/biome/feature/giant_mushroom_red_top
execute if score choice value matches 2 positioned ~ ~3 ~ run function tid:dungeon/nature/biome/feature/giant_mushroom_red_top
execute if score choice value matches 3 positioned ~ ~4 ~ run function tid:dungeon/nature/biome/feature/giant_mushroom_red_top
