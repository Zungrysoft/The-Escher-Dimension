#Use the biome value to determine which tile function to use
#_tile
execute if score biome value matches 0 run function tid:dungeon/nature/biome/biome/desert_tile
execute if score biome value matches 1 run function tid:dungeon/nature/biome/biome/plains_tile
execute if score biome value matches 2..3 run function tid:dungeon/nature/biome/biome/flats_tile
