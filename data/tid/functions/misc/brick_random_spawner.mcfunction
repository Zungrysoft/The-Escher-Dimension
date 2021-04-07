#Delete the Command Block
setblock ~ ~ ~ air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace redstone_block

#Decide which spawner to place
#Brick Baron
execute if predicate tid:random_70 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 80s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id:"minecraft:zombie",CustomName:'[{"text":"Brick Baron"}]',HandItems:[{id:brick,Count:1},{id:brick,Count:1}],HandDropChances:[0F,0F],ArmorItems:[{},{},{},{id:bricks,Count:1}],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:"generic.knockback_resistance",Base:1.0F}],Tags:["brick_baron"],DeathLootTable: "tid:entities/brick_baron"}, Weight: 1}]}
#Skeleton
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton"}, Weight: 1}]}
