#Grass plants
execute if predicate tid:random_80 run setblock ~ ~ ~ fern
execute if predicate tid:random_50 run setblock ~ ~ ~ nether_sprouts
execute if predicate tid:random_33 run setblock ~ ~ ~ warped_roots
execute if predicate tid:random_10 run setblock ~ ~ ~ warped_fungus
execute if predicate tid:random_10 run setblock ~ ~ ~ soul_lantern
execute if predicate tid:random_02 run function tid:misc/sweet_berries
execute if predicate tid:random_04 run function tid:misc/soul_lantern
execute if predicate tid:random_15 run function tid:misc/twisting_vines
execute if predicate tid:random_003 unless block ~ ~ ~ twisting_vines unless block ~ ~ ~ twisting_vines_plant run setblock ~ ~ ~ barrel[facing=up]{LootTable: "tid:chests/mutant"}
