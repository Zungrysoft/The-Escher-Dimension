#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Decide which spawner to place


#Nether Brick Baron
execute if predicate tid:random_90 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id:"minecraft:zombie",CustomName:'[{"text":"Nether Brick Baron"}]',HandItems:[{id:netherite_shovel,Count:1},{}],HandDropChances:[0F,0F],ArmorItems:[{},{},{id:netherite_chestplate,Count:1},{id:nether_bricks,Count:1}],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:"generic.knockback_resistance",Base:1.0F},{Name:"generic.attack_damage",Base:2F}],DeathLootTable: "tid:entities/nether_brick_baron"}, Weight: 1}]}
#Magma Cube
execute if predicate tid:random_05 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:magma_cube"}, Weight: 1}]}
#Mini-Magma Cubes
execute if predicate tid:random_01 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 7s, RequiredPlayerRange: 10s, SpawnCount: 1s, MinSpawnDelay: 30s, MaxSpawnDelay: 30s, Delay: 20s, SpawnRange: 2s, SpawnPotentials: [{Entity: {id: "minecraft:magma_cube", Size:0}, Weight: 1}]}
#Charged Creeper
execute if predicate tid:random_05 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:creeper", powered:1}, Weight: 1}]}
#Skeleton
execute if predicate tid:random_33 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton"}, Weight: 1}]}
#Blaze
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:blaze"}, Weight: 1}]}

