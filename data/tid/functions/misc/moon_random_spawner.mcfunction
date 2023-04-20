#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
#Moon Wraith if y <= 22
execute if predicate tid:random_50 unless block ~ ~234 ~ clay run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 32s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 100s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:wither_skeleton", CustomName:'[{"text":"Moon Wraith"}]',Health:30,HandItems:[{id:dragon_egg,Count:1},{id:dragon_egg,Count:1}],ArmorItems:[{id:leather_boots,tag:{display:{color:5570635}},Count:1},{},{id:leather_chestplate,tag:{display:{color:4259895}},Count:1},{id:dragon_egg,Count:1}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,1F],Attributes:[{Name:"generic.attack_damage",Base:15f},{Name:"generic.max_health",Base:30F}],ActiveEffects: [{ShowParticles:0b,Duration:999999999,Id:14b}],DeathLootTable: ""}, Weight: 1}]}
#Killer Bunny
execute if predicate tid:random_15 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 32s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:armor_stand", Invisible:1,Tags:["spawncloud","killer_bunny"]}, Weight: 1}]}
#Cannibal
execute if predicate tid:random_15 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 32s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:armor_stand", Invisible:1,Tags:["spawncloud","cannibal"]}, Weight: 1}]}
#Blaze
execute if predicate tid:random_10 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 400s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:blaze"}, Weight: 1}]}
#Priest Summoner
execute if predicate tid:random_60 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 100s, MaxSpawnDelay: 300s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombie",HandItems:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:sharpness",lvl:2}]},Count:1}],ArmorItems:[{},{},{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:fire_protection",lvl:4},{id:"minecraft:projectile_protection",lvl:1},{id:"minecraft:protection",lvl:2}]},Count:1}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f],Tags:["priest_summoner"]}, Weight: 1}]}
#Phantom
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 400s, Delay: 80s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:phantom"}, Weight: 1}]}
