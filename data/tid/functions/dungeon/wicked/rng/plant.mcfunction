#Base Block
setblock ~ ~ ~ crimson_nylium

#Plants
execute if predicate tid:random_40 run setblock ~ ~1 ~ crimson_roots
execute if predicate tid:random_02 run setblock ~ ~1 ~ crimson_fungus

#Hyphae
execute if predicate tid:random_05 if block ~ ~1 ~ air run setblock ~ ~ ~ crimson_hyphae[axis=x]
execute if predicate tid:random_05 if block ~ ~1 ~ air run setblock ~ ~ ~ crimson_hyphae[axis=z]

#Underground
execute if predicate tid:random_40 run fill ~ ~-1 ~ ~ ~-1 ~ netherrack replace obsidian
execute if predicate tid:random_20 run fill ~ ~-1 ~ ~ ~-2 ~ netherrack replace obsidian
execute if predicate tid:random_10 run fill ~ ~-1 ~ ~ ~-3 ~ netherrack replace obsidian
execute if predicate tid:random_02 run fill ~ ~-1 ~ ~ ~-4 ~ netherrack replace obsidian
execute if predicate tid:random_005 run fill ~ ~-1 ~ ~ ~-5 ~ netherrack replace obsidian
