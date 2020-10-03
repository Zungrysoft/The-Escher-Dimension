#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
execute if predicate tid:random_10 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 170s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:phantom"}, Weight: 1}]}
execute if predicate tid:random_33 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 170s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombie",CustomName:"\"Fireflare\"", Health:4,ActiveEffects: [{ShowParticles:0b,Duration:999999999,Id:12b}],IsBaby:1,Fire:999999,ArmorItems:[{id:leather_boots,tag:{display:{color:16351261}},Count:1},{id:leather_leggings,tag:{display:{color:16351261}},Count:1},{id:leather_chestplate,tag:{display:{color:16351261}},Count:1},{id:magma_block,Count:1}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],Tags:["fireflare"],DeathLootTable: ""}, Weight: 1}]}
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 170s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:blaze"}, Weight: 1}]}