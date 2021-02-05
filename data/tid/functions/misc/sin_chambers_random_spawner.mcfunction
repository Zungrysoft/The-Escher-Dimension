#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Decide which spawner to place
#War Pig 2
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 32s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 100s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:armor_stand", Invisible:1,Tags:["spawncloud","war_pig_2"]}, Weight: 1}]}
