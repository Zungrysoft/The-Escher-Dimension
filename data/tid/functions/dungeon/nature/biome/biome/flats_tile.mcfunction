#Land
execute if score height value matches 651..750 run fill ~ 50 ~ ~ 56 ~ andesite

#Overhangs
execute if score height value matches 644..757 run setblock ~ 56 ~ andesite

#Mysterious chains
execute if predicate tid:random_02 if score height value matches 644..757 positioned ~ 57 ~ unless block ~ ~ ~-1 chain unless block ~-1 ~ ~ chain run function tid:dungeon/nature/biome/feature/mysterious_chain_recurse

#Maybe place a spawner
execute if predicate tid:random_biome positioned ~ 57 ~ if block ~ ~ ~ andesite if block ~ ~1 ~ air run function tid:misc/nature_random_spawner
