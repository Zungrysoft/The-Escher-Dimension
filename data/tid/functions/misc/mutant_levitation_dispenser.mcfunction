#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Place the spawner
setblock ~ ~-1 ~ spawner{MaxNearbyEntities: 100s, RequiredPlayerRange: 8s, SpawnCount: 1s, MinSpawnDelay: 12s, MaxSpawnDelay: 12s, Delay: 1s, SpawnRange: 0s, SpawnPotentials: [{Entity: {id: "minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionColor:16559615,CustomPotionEffects:[{Id:25,Duration:300,Amplifier:2},{Id:28,Duration:500}]}},Motion:[0d,0.4d,0d]}, Weight: 1}]}
