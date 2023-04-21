#Delete the Command Block
setblock ~ ~ ~ air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace redstone_block

#Decide which spawner to place
#War Pig 2
execute if predicate tid:random_60 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 28s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:armor_stand", Invisible:1,Tags:["spawncloud","war_pig_2"]}, Weight: 1}]}
#Fountain of Flame
execute if predicate tid:random_30 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 28s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:zombie",CustomName:"\"Fountain of Flame\"", Health:30,Attributes:[{Name:"generic.max_health",Base:30F}],HandItems:[{id:blaze_rod,Count:1},{id:blaze_rod,Count:1}],HandDropChances:[0.05F,0.05F],ActiveEffects: [{ShowParticles:0b,Duration:999999999,Id:12b}],IsBaby:0,Fire:999999,ArmorItems:[{id:leather_boots,tag:{display:{color:16351261}},Count:1},{id:leather_leggings,tag:{display:{color:16351261}},Count:1},{id:leather_chestplate,tag:{display:{color:16351261}},Count:1},{id:nether_gold_ore,Count:1}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],Tags:["fire_fountain"],DeathLootTable: "tid:entities/fire_fountain"}, Weight: 1}]}
#Blaze
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 28s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:blaze"}, Weight: 1}]}
