#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Randomly place clay nearby
execute if predicate tid:random_50 positioned ~1 ~-1 ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_50 positioned ~1 ~-1 ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_50 positioned ~ ~-1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_50 positioned ~ ~-1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_30 positioned ~1 ~-1 ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_30 positioned ~1 ~-1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_30 positioned ~-1 ~-1 ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_30 positioned ~-1 ~-1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay

execute if predicate tid:random_90 positioned ~ ~ ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_50 positioned ~1 ~ ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_40 positioned ~1 ~ ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_40 positioned ~ ~ ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_40 positioned ~ ~ ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_20 positioned ~1 ~ ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_25 positioned ~1 ~ ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_20 positioned ~-1 ~ ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_20 positioned ~-1 ~ ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay

execute if predicate tid:random_40 positioned ~ ~1 ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_40 positioned ~1 ~1 ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_50 positioned ~1 ~1 ~ unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_40 positioned ~ ~1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_40 positioned ~ ~1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_20 positioned ~1 ~1 ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_20 positioned ~1 ~1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_20 positioned ~-1 ~1 ~1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay
execute if predicate tid:random_25 positioned ~-1 ~1 ~-1 unless block ~ ~-1 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ clay

