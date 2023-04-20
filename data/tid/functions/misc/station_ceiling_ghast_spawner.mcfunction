#If we're at the ceiling, create the spawner >:)
execute if block ~ ~1 ~ warped_hyphae if block ~ ~ ~ air run setblock ~ ~ ~ spawner{MaxNearbyEntities: 1s, RequiredPlayerRange: 40s, SpawnCount: 1s, MinSpawnDelay: 1800s, MaxSpawnDelay: 3600s, SpawnRange: 15s, SpawnPotentials: [{Entity: {id: "minecraft:ghast"}, Weight: 1}]}

#If we're at the ceiling, light it up so the player knows exactly where it is
execute if block ~ ~ ~ spawner run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 glowstone replace warped_hyphae

#If we're still in air, go up some more
execute if block ~ ~ ~ air positioned ~ ~1 ~ run function tid:misc/station_ceiling_ghast_spawner