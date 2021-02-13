#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide what to build
scoreboard players set temp value 0
execute if predicate tid:random_30 run scoreboard players set temp value 1
execute if predicate tid:random_30 run scoreboard players set temp value 2
execute if predicate tid:random_30 run scoreboard players set temp value 3

#Chest Wall
execute if score temp value matches 1 run function tid:misc/sin_room_chest

#Chest
execute if score temp value matches 2 run setblock ~ ~ ~ chest[facing=east]{LootTable: "tid:chests/sin"}

#Spawner
execute if score temp value matches 3 run function tid:misc/sin_random_spawner
execute if score temp value matches 3 run setblock ~ ~1 ~ polished_blackstone_brick_slab
