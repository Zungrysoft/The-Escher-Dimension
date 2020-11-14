#Trunk
fill ~ ~ ~ ~-1 ~-3 ~-1 crimson_stem

#Wart
fill ~-2 ~-1 ~-2 ~1 ~1 ~1 nether_wart_block replace air
fill ~-3 ~ ~-3 ~2 ~ ~2 nether_wart_block replace air

#Randomly edit some wart
execute if predicate tid:random_50 run setblock ~-3 ~ ~-3 air
execute if predicate tid:random_50 run setblock ~-3 ~ ~2 air
execute if predicate tid:random_50 run setblock ~2 ~ ~-3 air
execute if predicate tid:random_50 run setblock ~2 ~ ~2 air
execute if predicate tid:random_50 run setblock ~-2 ~1 ~-2 air
execute if predicate tid:random_50 run setblock ~-2 ~1 ~1 air
execute if predicate tid:random_50 run setblock ~1 ~1 ~-2 air
execute if predicate tid:random_50 run setblock ~1 ~1 ~1 air
execute if predicate tid:random_50 run setblock ~-2 ~-1 ~-2 air
execute if predicate tid:random_50 run setblock ~-2 ~-1 ~1 air
execute if predicate tid:random_50 run setblock ~1 ~-1 ~-2 air
execute if predicate tid:random_50 run setblock ~1 ~-1 ~1 air

#Add vines
execute if predicate tid:random_33 positioned ~-3 ~-1 ~1 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~-3 ~-1 ~-1 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~-3 ~-1 ~ run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~2 ~-1 ~1 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~2 ~-1 ~-1 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~2 ~-1 ~ run function tid:dungeon/nature/biome/feature/weeping_vines

execute if predicate tid:random_33 positioned ~1 ~-1 ~-3 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~-1 ~-1 ~-3 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~ ~-1 ~-3 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~1 ~-1 ~2 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~-1 ~-1 ~2 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~ ~-1 ~2 run function tid:dungeon/nature/biome/feature/weeping_vines

execute if predicate tid:random_33 positioned ~-2 ~-1 ~-1 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~-2 ~-1 ~ run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~1 ~-1 ~-1 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~1 ~-1 ~ run function tid:dungeon/nature/biome/feature/weeping_vines

execute if predicate tid:random_33 positioned ~-1 ~-1 ~-2 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~ ~-1 ~-2 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~-1 ~-1 ~1 run function tid:dungeon/nature/biome/feature/weeping_vines
execute if predicate tid:random_33 positioned ~ ~-1 ~1 run function tid:dungeon/nature/biome/feature/weeping_vines





