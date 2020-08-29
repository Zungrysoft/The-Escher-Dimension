#Create the spawner >:)
setblock ~ ~ ~ spawner{MaxNearbyEntities: 1s, RequiredPlayerRange: 70s, SpawnCount: 1s, MinSpawnDelay: 1800s, MaxSpawnDelay: 3600s, Delay: 2000s, SpawnRange: 15s, SpawnPotentials: [{Entity: {id: "minecraft:ghast"}, Weight: 1}]}

#Light up the spawner so the player knows exactly where it is
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 glowstone replace warped_hyphae