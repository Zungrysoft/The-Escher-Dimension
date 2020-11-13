#Use the biome value to determine which tile function to use
#_tile
execute if score biome value matches 0 run function tid:dungeon/nature/biome/biome/desert_tile
execute if score biome value matches 1 run function tid:dungeon/nature/biome/biome/plains_tile
execute if score biome value matches 2 run function tid:dungeon/nature/biome/biome/forest_tile
execute if score biome value matches 3 run function tid:dungeon/nature/biome/biome/flats_tile
execute if score biome value matches 4 run function tid:dungeon/nature/biome/biome/snow_plains_tile
execute if score biome value matches 5 run function tid:dungeon/nature/biome/biome/stone_tile
execute if score biome value matches 6 run function tid:dungeon/nature/biome/biome/flower_meadow_tile
execute if score biome value matches 7 run function tid:dungeon/nature/biome/biome/clay_tile
