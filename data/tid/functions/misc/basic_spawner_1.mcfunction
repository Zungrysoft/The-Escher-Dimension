#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Set the spawner block to a random block
setblock ~-3 ~2 ~-3 cobblestone
execute if predicate tid:random_25 run setblock ~-3 ~2 ~-3 stone
execute if predicate tid:random_20 run setblock ~-3 ~2 ~-3 stone_bricks
execute if predicate tid:random_01 run setblock ~-3 ~2 ~-3 mossy_stone_bricks
execute if predicate tid:random_01 run setblock ~-3 ~2 ~-3 cracked_stone_bricks

#Check for the random block to determine which spawner to place
#Have to do it this way because spawners don't like overwriting other spawners for whatever goddamn reason
execute if block ~-3 ~2 ~-3 cobblestone run setblock ~-3 ~2 ~-3 spawner{MaxNearbyEntities: 6s, RequiredPlayerRange: 16s, SpawnCount: 4s, SpawnData: {id: "minecraft:zombie"}, MaxSpawnDelay: 800s, Delay: 170s, x: 103, id: "minecraft:mob_spawner", SpawnRange: 4s, MinSpawnDelay: 200s, SpawnPotentials: [{Entity: {id: "minecraft:zombie"}, Weight: 1}]}
execute if block ~-3 ~2 ~-3 stone run setblock ~-3 ~2 ~-3 spawner{MaxNearbyEntities: 6s, RequiredPlayerRange: 16s, SpawnCount: 4s, SpawnData: {id: "minecraft:spider"}, MaxSpawnDelay: 800s, Delay: 170s, x: 103, id: "minecraft:mob_spawner", SpawnRange: 4s, MinSpawnDelay: 200s, SpawnPotentials: [{Entity: {id: "minecraft:spider"}, Weight: 1}]}
execute if block ~-3 ~2 ~-3 stone_bricks run setblock ~-3 ~2 ~-3 spawner{MaxNearbyEntities: 6s, RequiredPlayerRange: 16s, SpawnCount: 4s, SpawnData: {id: "minecraft:skeleton"}, MaxSpawnDelay: 800s, Delay: 170s, x: 103, id: "minecraft:mob_spawner", SpawnRange: 4s, MinSpawnDelay: 200s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton"}, Weight: 1}]}
execute if block ~-3 ~2 ~-3 mossy_stone_bricks run setblock ~-3 ~2 ~-3 spawner{MaxNearbyEntities: 6s, RequiredPlayerRange: 16s, SpawnCount: 4s, SpawnData: {id: "minecraft:enderman"}, MaxSpawnDelay: 800s, Delay: 170s, x: 103, id: "minecraft:mob_spawner", SpawnRange: 4s, MinSpawnDelay: 200s, SpawnPotentials: [{Entity: {id: "minecraft:enderman"}, Weight: 1}]}
execute if block ~-3 ~2 ~-3 cracked_stone_bricks run setblock ~-3 ~2 ~-3 spawner{MaxNearbyEntities: 6s, RequiredPlayerRange: 16s, SpawnCount: 4s, SpawnData: {id: "minecraft:blaze"}, MaxSpawnDelay: 800s, Delay: 170s, x: 103, id: "minecraft:mob_spawner", SpawnRange: 4s, MinSpawnDelay: 200s, SpawnPotentials: [{Entity: {id: "minecraft:blaze"}, Weight: 1}]}