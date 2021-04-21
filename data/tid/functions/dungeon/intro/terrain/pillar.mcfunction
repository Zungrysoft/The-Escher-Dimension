#Coarse Dirt
execute if predicate tid:random_50 run fill ~ ~ ~ ~ ~0 ~ coarse_dirt replace water
execute if predicate tid:random_30 if score xcount value matches 1..99 if score zcount value matches 1..99 run fill ~ ~ ~ ~ ~1 ~ coarse_dirt replace water
execute if predicate tid:random_20 if score xcount value matches 3..97 if score zcount value matches 3..97 run fill ~ ~ ~ ~ ~2 ~ coarse_dirt replace water
execute if predicate tid:random_15 if score xcount value matches 6..94 if score zcount value matches 6..94 run fill ~ ~ ~ ~ ~3 ~ coarse_dirt replace water
execute if predicate tid:random_10 if score xcount value matches 9..91 if score zcount value matches 9..91 run fill ~ ~ ~ ~ ~4 ~ coarse_dirt replace water
execute if predicate tid:random_05 if score xcount value matches 12..88 if score zcount value matches 12..88 run fill ~ ~ ~ ~ ~5 ~ coarse_dirt replace water
execute if predicate tid:random_02 if score xcount value matches 15..85 if score zcount value matches 15..85 run fill ~ ~ ~ ~ ~6 ~ coarse_dirt replace water

#Gravel
execute if predicate tid:random_20 positioned ~ ~4 ~ if block ~ ~ ~ coarse_dirt run setblock ~ ~ ~ gravel
execute if predicate tid:random_20 positioned ~ ~5 ~ if block ~ ~ ~ coarse_dirt run setblock ~ ~ ~ gravel
execute if predicate tid:random_20 positioned ~ ~6 ~ if block ~ ~ ~ coarse_dirt run setblock ~ ~ ~ gravel

#Maybe place a spawner here
execute if predicate tid:random_005 run function tid:misc/intro_drowned_spawner
execute if block ~ ~ ~ spawner run fill ~ ~1 ~ ~ ~6 ~ water
