#Delete the command block
fill ~ ~1 ~ ~ ~ ~ andesite

#Decide whether to generate a chest
scoreboard players set temp value 0
execute if predicate tid:random_02 run scoreboard players set temp value 1
execute if score temp value matches 1 run setblock ~ ~ ~ chest[facing=south]{LootTable: "tid:chests/infernal"}
execute if score temp value matches 1 run setblock ~ ~1 ~ air
execute if score temp value matches 1 run setblock ~ ~2 ~ andesite_slab[type=top]
execute if score temp value matches 1 run function tid:misc/infernal_mark_chest