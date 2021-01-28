#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Decide which spawner to place
#War Pig 1
#execute if predicate tid:random_25 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id:"minecraft:zombified_piglin",CanBreakDoors:1,CustomName:'[{"text":"War Pig"}]',Health:25,HandItems:[{id:crossbow,Count:1,tag:{Enchantments:[{id:piercing,lvl:10}]}}],HandDropChances:[0.01f],ArmorItems:[{},{},{id:iron_chestplate,Count:1}],ArmorDropChances:[0F,0F,0.01f],Attributes:[{Name:"generic.max_health",Base:25F},{Name:"generic.movement_speed",Base:0.2f}],Tags:["war_pig","power_low"],DeathLootTable: "tid:entities/war_pig"}, Weight: 1}]}
#Skeleton
execute if predicate tid:random_40 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton"}, Weight: 1}]}
#Blaze
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombie"}, Weight: 1}]}
