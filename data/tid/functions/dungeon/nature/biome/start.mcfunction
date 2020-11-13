#Pick a biome generator
scoreboard players set debug value 0
scoreboard players set biome value 0
execute if predicate tid:random_50 run scoreboard players add biome value 1
execute if predicate tid:random_50 run scoreboard players add biome value 2
execute if score biome value matches 0..1 run function tid:dungeon/nature/biome/biome/desert
execute if score biome value matches 2..3 run function tid:dungeon/nature/biome/biome/plains

#Clone the result over
clone 2006 50 2006 2057 61 2057 ~ ~ ~
clone 2006 62 2006 2057 72 2057 ~ ~12 ~