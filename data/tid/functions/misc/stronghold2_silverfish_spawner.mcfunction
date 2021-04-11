#Delete the Command Block
setblock ~ ~ ~ air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace redstone_block

#Silverfish
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 1s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:silverfish"}, Weight: 1}]}
