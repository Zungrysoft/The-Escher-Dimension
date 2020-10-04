#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block
fill ~-1 ~ ~ ~1 ~ ~ air replace redstone_block
fill ~ ~ ~-1 ~ ~ ~1 air replace redstone_block

#Bury it in sand
execute if block ~ ~1 ~ air run setblock ~ ~1 ~ sand
execute if block ~ ~2 ~ sandstone run setblock ~ ~2 ~ sand

#Pick a random monster spawner
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 170s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:creeper"}, Weight: 1}]}
