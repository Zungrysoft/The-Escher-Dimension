#Regular blocks
setblock ~ ~ ~ nether_bricks
execute if predicate tid:random_25 run setblock ~ ~ ~ chiseled_nether_bricks
execute if predicate tid:random_10 run setblock ~ ~ ~ cracked_nether_bricks

#Spawners
execute if predicate tid:random_07 run function tid:misc/infernal_tower_random_spawner

#Chests
execute if score temp value matches 0 if predicate tid:random_02 unless block ~ ~1 ~ chiseled_nether_bricks run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/infernal"}
execute if score temp value matches 1 if predicate tid:random_02 unless block ~ ~1 ~ chiseled_nether_bricks run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/infernal"}
execute if score temp value matches 2 if predicate tid:random_02 unless block ~ ~1 ~ chiseled_nether_bricks run setblock ~ ~ ~ chest[facing=west]{LootTable: "tid:chests/infernal"}
execute if score temp value matches 3 if predicate tid:random_02 unless block ~ ~1 ~ chiseled_nether_bricks run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/infernal"}

#Clear space above chest
execute if block ~ ~ ~ chest run setblock ~ ~1 ~ air

#Mark chest on map
execute if block ~ ~ ~ chest run function tid:misc/infernal_mark_chest
