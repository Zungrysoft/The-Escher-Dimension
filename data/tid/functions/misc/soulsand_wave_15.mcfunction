#Magma Cubes

#Decide which monster gets summoned
scoreboard players set temp2 value 0
execute if predicate tid:random_30 if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air run scoreboard players set temp2 value 1

#Summon it
execute if score temp2 value matches 0 run summon magma_cube ~ ~ ~ {Size:1}
execute if score temp2 value matches 1 run summon magma_cube ~ ~ ~ {Size:3}
