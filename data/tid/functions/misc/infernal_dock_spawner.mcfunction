#Delete the Command Block
setblock ~ ~ ~ air
setblock ~ ~1 ~ nether_bricks

#Build spawner
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 170s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zoglin"}, Weight: 1}]}
