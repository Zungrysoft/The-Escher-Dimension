#Determine rift position
scoreboard players set calc value 8
scoreboard players operation pickx value = x value
scoreboard players operation pickx value %= calc value
scoreboard players operation pickz value = z value
scoreboard players operation pickz value %= calc value

#Use position to determine height
scoreboard players set pick value 0
execute if score pickx value matches 2 run scoreboard players set pick value 2
execute if score pickz value matches 2 run scoreboard players set pick value 2
execute if score pickx value matches 4 run scoreboard players set pick value 2
execute if score pickz value matches 4 run scoreboard players set pick value 2
execute if score pickx value matches 3 run scoreboard players set pick value 5
execute if score pickz value matches 3 run scoreboard players set pick value 5

#Go higher on corners
execute if score pickx value matches 2..4 if score pickz value matches 2..4 run scoreboard players add pick value 1

#Add some randomness
execute if predicate tid:random_25 run scoreboard players remove pick value 1
execute if predicate tid:random_10 run scoreboard players remove pick value 1

#Run the build function at the correct height
execute if score pick value matches ..0 run function tid:dungeon/nature/biome/biome/rift_tile_build
execute if score pick value matches 1 positioned ~ ~1 ~ run function tid:dungeon/nature/biome/biome/rift_tile_build
execute if score pick value matches 2 positioned ~ ~2 ~ run function tid:dungeon/nature/biome/biome/rift_tile_build
execute if score pick value matches 3 positioned ~ ~3 ~ run function tid:dungeon/nature/biome/biome/rift_tile_build
execute if score pick value matches 4 positioned ~ ~4 ~ run function tid:dungeon/nature/biome/biome/rift_tile_build
execute if score pick value matches 5 positioned ~ ~5 ~ run function tid:dungeon/nature/biome/biome/rift_tile_build
execute if score pick value matches 6.. positioned ~ ~6 ~ run function tid:dungeon/nature/biome/biome/rift_tile_build
