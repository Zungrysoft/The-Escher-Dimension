#Build
execute unless block ~ ~ ~ air run function tid:misc/sin_gold_pile
execute unless block ~ ~ ~ air if predicate tid:random_20 run function tid:misc/sin_chambers_cave_item_chest

#Recurse
execute if block ~ ~ ~ air positioned ~ ~-1 ~ run function tid:misc/sin_chambers_cave_item_recurse
