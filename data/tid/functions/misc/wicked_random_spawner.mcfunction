#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
#Horde Zombie
execute if predicate tid:random_25 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 10s, RequiredPlayerRange: 16s, SpawnCount: 20s, MinSpawnDelay: 600s, MaxSpawnDelay: 1000s, Delay: 20s, SpawnRange: 6s, SpawnPotentials: [{Entity: {id: "minecraft:zombie",CustomName:'[{"text":"Cordyceps Host"}]',Health:16,HandItems:[{id:netherite_sword,Count:1},{id:crimson_fungus,Count:1}],HandDropChances:[0.00f,0.00f],ArmorItems:[{id:leather_boots,tag:{display:{color:13381158}},Count:1},{id:leather_leggings,tag:{display:{color:13381158}},Count:1},{id:leather_chestplate,tag:{display:{color:14535799}},Count:1},{id:crimson_hyphae,Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Attributes:[{Name:"generic.max_health",Base:16F}],DeathLootTable:""}, Weight: 1}]}
#Sporemage
execute if predicate tid:random_50 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 400s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombie",CustomName:'[{"text":"Sporemage"}]',Health:24,ArmorItems:[{id:leather_boots,tag:{display:{color:5451302}},Count:1},{id:leather_leggings,tag:{display:{color:7220774}},Count:1},{id:leather_chestplate,tag:{display:{color:8597030}},Count:1},{id:crimson_nylium,Count:1}],Attributes:[{Name:"generic.movement_speed",Base:0.3f},{Name:"generic.max_health",Base:24F}],HandItems:[{id:netherite_axe,Count:1}],HandDropChances:[0F],ArmorDropChances:[0F,0F,0F,0F],Tags:["sporemage"],DeathLootTable: "tid:entities/sporemage"}, Weight: 1}]}
#War Pig 4
execute if predicate tid:random_33 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 32s, SpawnCount: 5s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:armor_stand", Invisible:1,Tags:["spawncloud","war_pig_4"]}, Weight: 1}]}
#Trident Drowned
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 32s, SpawnCount: 10s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:armor_stand", Invisible:1,Tags:["spawncloud","drowned2"]}, Weight: 1}]}
