#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Decide which spawner to place
#Pickaxe Skeleton
execute if predicate tid:random_20 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton",HandItems:[{id:wooden_pickaxe,Count:1}],HandDropChances:[0.05F],DeathLootTable:"tid:entities/wood_skeleton"}, Weight: 1},{Entity: {id: "minecraft:skeleton",HandItems:[{id:wooden_shovel,Count:1}],HandDropChances:[0.05F],DeathLootTable:"tid:entities/wood_skeleton"}, Weight: 1}]}
#Creeper
execute if predicate tid:random_25 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:creeper"}, Weight: 1}]}
#Webspinner Spider
execute if predicate tid:random_33 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:spider",DeathLootTable:"tid:gameplay/deathweb",CustomName:'[{"text":"Webspinner"}]',Health:26,Attributes:[{Name:"generic.max_health",Base:26F}]}, Weight: 1}]}
#Zombie
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombie",Tags:["farie_summoner_summoner"]}, Weight: 1}]}

#Pedestal
execute if block ~ ~-1 ~ snow run setblock ~ ~-1 ~ smooth_stone_slab[type=double]
