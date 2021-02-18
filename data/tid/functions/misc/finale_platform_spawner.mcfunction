#Build the platform
fill ~2 ~-2 ~2 ~-2 ~-2 ~-2 stripped_crimson_hyphae[axis=y]

#Decide which spawner to place
#War Pig 4
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 32s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 100s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:armor_stand", Invisible:1,Tags:["spawncloud","war_pig_4"]}, Weight: 1}]}
