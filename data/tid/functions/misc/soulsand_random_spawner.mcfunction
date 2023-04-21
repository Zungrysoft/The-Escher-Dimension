#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
#Blaze
execute if predicate tid:random_10 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 400s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:blaze"}, Weight: 1}]}
#Skeleton
execute if predicate tid:random_15 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton",ArmorItems:[{},{},{id:chainmail_chestplate,Count:1},{}],ArmorDropChances:[0.00F,0.00F,0.01F,0.00F],HandItems:[{id:bow,Count:1},{}],HandDropChances:[0.01F,0F]}, Weight: 1}]}
#War Pig
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:armor_stand", Invisible:1,Tags:["spawncloud","war_pig_1"]}, Weight: 1}]}
