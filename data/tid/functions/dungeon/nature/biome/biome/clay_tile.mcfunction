#Generate terrain
fill ~ ~ ~ ~ ~-3 ~ clay replace air
fill ~ ~-4 ~ ~ ~-22 ~ gravel replace air

#Overhangs
execute if block ~ 55 ~ air run fill ~ 66 ~ ~ 66 ~ clay
execute if block ~ 54 ~ air run fill ~ 65 ~ ~ 67 ~ clay
execute if block ~ 53 ~ air run fill ~ 64 ~ ~ 68 ~ clay
execute if block ~ 52 ~ air run fill ~ 63 ~ ~ 69 ~ clay
execute if block ~ 51 ~ air run fill ~ 62 ~ ~ 70 ~ clay
execute if block ~ 50 ~ air run fill ~ 61 ~ ~ 71 ~ clay
execute if block ~ 49 ~ air run fill ~ 60 ~ ~ 72 ~ clay

#Fire
execute if predicate tid:random_02 if block ~ ~1 ~ air run setblock ~ ~1 ~ fire

#Maybe place a spawner
execute if predicate tid:random_biome if block ~ ~ ~ clay if block ~ ~1 ~ air positioned ~ ~1 ~ run function tid:misc/nature_random_spawner
