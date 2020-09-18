#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
execute if predicate tid:random_10 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 1s, RequiredPlayerRange: 100s, SpawnCount: 1s, MinSpawnDelay: 1800s, MaxSpawnDelay: 3600s, Delay: 170s, SpawnRange: 15s, SpawnPotentials: [{Entity: {id: "minecraft:creeper"}, Weight: 1}]}
execute if predicate tid:random_33 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 1s, RequiredPlayerRange: 100s, SpawnCount: 1s, MinSpawnDelay: 1800s, MaxSpawnDelay: 3600s, Delay: 170s, SpawnRange: 15s, SpawnPotentials: [{Entity: {id: "minecraft:cave_spider"}, Weight: 1}]}
setblock ~ ~ ~ spawner{MaxNearbyEntities: 1s, RequiredPlayerRange: 100s, SpawnCount: 1s, MinSpawnDelay: 1800s, MaxSpawnDelay: 3600s, Delay: 170s, SpawnRange: 15s, SpawnPotentials: [{Entity: {id: "minecraft:pillager"}, Weight: 1}]}