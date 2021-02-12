#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air replace redstone_block
fill ~ ~1 ~ ~ ~ ~ air replace command_block

#Randomly place gold nearby
execute if predicate tid:random_50 positioned ~ ~ ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_25 positioned ~1 ~ ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_20 positioned ~1 ~ ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_20 positioned ~ ~ ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_20 positioned ~ ~ ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_10 positioned ~1 ~ ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_15 positioned ~1 ~ ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_10 positioned ~-1 ~ ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_10 positioned ~-1 ~ ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone

execute if predicate tid:random_20 positioned ~ ~1 ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_20 positioned ~1 ~1 ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_25 positioned ~1 ~1 ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_20 positioned ~ ~1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_20 positioned ~ ~1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_10 positioned ~1 ~1 ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_10 positioned ~1 ~1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_10 positioned ~-1 ~1 ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone
execute if predicate tid:random_15 positioned ~-1 ~1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ gilded_blackstone

