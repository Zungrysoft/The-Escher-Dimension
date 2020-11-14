#Generate terrain
fill ~ ~ ~ ~ ~-3 ~ red_concrete_powder replace air
fill ~ ~-4 ~ ~ ~-6 ~ red_concrete replace air
fill ~ ~-7 ~ ~ ~-22 ~ stone replace air

#Maybe place shrubs and cacti
execute if score height value matches 551.. if predicate tid:random_02 positioned ~ ~1 ~ run function tid:dungeon/nature/biome/feature/acacia_bush
