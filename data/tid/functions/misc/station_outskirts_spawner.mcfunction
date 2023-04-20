#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
#Armored Bow Skeleton
execute if predicate tid:random_25 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton",HandItems:[{id:bow,Count:1,tag:{Enchantments:[{id:"minecraft:power",lvl:8}]}}],ArmorItems:[{id:golden_boots,Count:1},{id:golden_leggings,Count:1},{id:golden_chestplate,Count:1},{id:chainmail_helmet,Count:1}],HandDropChances:[0F]}, Weight: 1}]}
#Armored Sword Skeleton
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton",HandItems:[{id:iron_sword,Count:1,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:3}]}}],ArmorItems:[{id:golden_boots,Count:1},{id:golden_leggings,Count:1},{id:golden_chestplate,Count:1},{id:chainmail_helmet,Count:1}],DeathLootTable:"tid:entities/iron_skeleton",Attributes:[{Name:"generic.attack_damage",Base:5f}]}, Weight: 1}]}
