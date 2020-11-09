#Pick a biome generator
scoreboard players set debug value 0
scoreboard players set biome value 0
execute if predicate tid:random_50 run scoreboard players add biome value 1
execute if score biome value matches 0..1 run function tid:dungeon/nature/biome/biome/desert
