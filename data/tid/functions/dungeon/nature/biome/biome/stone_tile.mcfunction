#Generate terrain
fill ~ ~ ~ ~ ~-22 ~ stone replace air

#Maybe generate a coal pile
execute if predicate tid:random_02 positioned ~ ~-1 ~ run function tid:misc/coal_pile

#Put in ores
execute if predicate tid:random_001 run setblock ~ ~ ~ diamond_ore
execute if predicate tid:random_003 run setblock ~ ~ ~ gold_ore
execute if predicate tid:random_002 run setblock ~ ~ ~ lapis_ore
execute if predicate tid:random_003 run setblock ~ ~ ~ emerald_ore
execute if predicate tid:random_002 run setblock ~ ~ ~ redstone_ore
execute if predicate tid:random_02 run setblock ~ ~ ~ iron_ore

#Maybe place a spawner (Extra spawners in this biome)
execute if predicate tid:random_biome if block ~ ~ ~ stone if block ~ ~1 ~ air positioned ~ ~1 ~ run function tid:misc/nature_random_spawner
execute if predicate tid:random_biome if block ~ ~ ~ stone if block ~ ~1 ~ air positioned ~ ~1 ~ run function tid:misc/nature_random_spawner
