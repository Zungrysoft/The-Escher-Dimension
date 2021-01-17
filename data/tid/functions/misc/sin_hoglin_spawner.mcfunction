#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Build the spawner
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 170s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:hoglin",Tags:["keep"]}, Weight: 1}]}
