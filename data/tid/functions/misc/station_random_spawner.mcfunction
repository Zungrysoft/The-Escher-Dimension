# Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

# Pick a random monster spawner
# Flesheater
execute if predicate tid:random_10 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 2s, RequiredPlayerRange: 16s, SpawnCount: 200s, MinSpawnDelay: 300s, MaxSpawnDelay: 400s, Delay: 1s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id:"minecraft:skeleton",CustomName:'[{"text":"Flesheater"}]',Health:14,Attributes:[{Name:"generic.max_health",Base:14F},{Name:"generic.movement_speed",Base:0.2f},{Name:"generic.attack_damage",Base:5f},{Name:"generic.armor",Base:-2000f}],Tags:["jumping_skeleton"],HandItems:[{id:"minecraft:iron_axe",Count:1},{id:"minecraft:iron_axe",Count:1}],ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:612727}},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:612727}},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:612727}},Count:1},{id:"minecraft:nether_quartz_ore",Count:1}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],DeathLootTable:""},Weight:1}]}
# Armored Bow Skeleton
execute if predicate tid:random_25 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton",HandItems:[{id:bow,Count:1,tag:{Enchantments:[{id:"minecraft:power",lvl:8}]}}],ArmorItems:[{id:golden_boots,Count:1},{id:golden_leggings,Count:1},{id:golden_chestplate,Count:1},{id:chainmail_helmet,Count:1}],HandDropChances:[0F]}, Weight: 1}]}
# Armored Sword Skeleton
execute if predicate tid:random_20 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton",HandItems:[{id:iron_sword,Count:1,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:3}]}}],ArmorItems:[{id:golden_boots,Count:1},{id:golden_leggings,Count:1},{id:golden_chestplate,Count:1},{id:chainmail_helmet,Count:1}],DeathLootTable:"tid:entities/iron_skeleton",Attributes:[{Name:"generic.attack_damage",Base:5f}]}, Weight: 1}]}
# Blaze Sandwich
execute if predicate tid:random_05 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:spider",ActiveEffects: [{ShowParticles:1b,Duration:999999999,Id:5b,Amplifier:1b}],Passengers:[{id:blaze,Passengers:[{id:spider,ActiveEffects: [{ShowParticles:1b,Duration:999999999,Id:5b,Amplifier:1b}],CustomName:'[{"text":"Grumm"}]'}]}]}, Weight: 1}]}
# Blaze
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:blaze"}, Weight: 1}]}
