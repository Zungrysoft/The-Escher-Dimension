#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Decide which spawner to place
#War Pig 3
execute if predicate tid:random_20 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombified_piglin",CanBreakDoors:1,CustomName:'[{"text":"War Pig"}]',Health:25,HandItems:[{id:crossbow,Count:1,tag:{Enchantments:[{id:piercing,lvl:10}]}}],HandDropChances:[0.01f],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:netherite_chestplate,Count:1},{id:iron_helmet,Count:1}],ArmorDropChances:[0.01f,0.01f,0f,0.01f],Attributes:[{Name:"generic.max_health",Base:25F},{Name:"generic.movement_speed",Base:0.2f},{Name:"generic.armor",Base:-4f}],Tags:["war_pig","power_high"],DeathLootTable: "tid:entities/war_pig"}, Weight: 1}]}
#Fireflare
execute if predicate tid:random_05 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombie",CustomName:"\"Fireflare\"", Health:4,ActiveEffects: [{ShowParticles:0b,Duration:999999999,Id:12b}],IsBaby:1,Fire:999999,ArmorItems:[{id:leather_boots,tag:{display:{color:16351261}},Count:1},{id:leather_leggings,tag:{display:{color:16351261}},Count:1},{id:leather_chestplate,tag:{display:{color:16351261}},Count:1},{id:magma_block,Count:1}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],Tags:["fireflare"],DeathLootTable: ""}, Weight: 1}]}
#Magma Cube
execute if predicate tid:random_07 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:magma_cube"}, Weight: 1}]}
#Wither Skeleton
execute if predicate tid:random_40 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:wither_skeleton"}, Weight: 1}]}
#Blaze
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:blaze"}, Weight: 1}]}
