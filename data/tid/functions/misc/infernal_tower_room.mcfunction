#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Monster spawner
execute if predicate tid:random_03 run function tid:misc/infernal_tower_random_spawner

#Dirt pile
execute if predicate tid:random_03 run function tid:misc/infernal_dirt_pile

#Iron blocks
execute if predicate tid:random_03 run function tid:misc/infernal_iron_pile

#Lava puddle
execute if predicate tid:random_03 unless block ~ ~-1 ~ basalt run function tid:misc/infernal_lava_puddle

#Chest
execute if predicate tid:random_05 run function tid:misc/infernal_pedestal_chest
