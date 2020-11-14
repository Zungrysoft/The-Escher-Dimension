#Decide what type of pillar goes here
execute if predicate tid:random_20 run fill ~ ~ ~ ~ ~ ~ netherrack replace air
execute if predicate tid:random_20 run fill ~ ~ ~ ~ ~1 ~ netherrack replace air
execute if predicate tid:random_20 run fill ~ ~ ~ ~ ~2 ~ netherrack replace air
execute if predicate tid:random_20 run fill ~ ~ ~ ~ ~3 ~ netherrack replace air

#Add glowstone
execute if predicate tid:random_15 if block ~ ~2 ~ netherrack run setblock ~ ~2 ~ glowstone
execute if predicate tid:random_15 if block ~ ~3 ~ netherrack run setblock ~ ~3 ~ glowstone

#Add ores
execute if predicate tid:random_03 if block ~ ~2 ~ netherrack run setblock ~ ~2 ~ nether_gold_ore
execute if predicate tid:random_05 if block ~ ~3 ~ netherrack run setblock ~ ~3 ~ nether_quartz_ore
