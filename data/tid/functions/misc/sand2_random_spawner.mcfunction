#Delete the Command Block
setblock ~ ~ ~ air
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace redstone_block

#Pick a random monster spawner
#Creeper
execute if predicate tid:random_10 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:creeper"}, Weight: 1}]}
#Blaze
execute if predicate tid:random_10 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:blaze",Tags:["potion_carrier_summoner"]}, Weight: 1}]}
#Potion Carrier Summoner
execute if predicate tid:random_33 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombie",Tags:["potion_carrier_summoner"],ArmorItems:[{id:leather_boots,tag:{display:{color:16351261}},Count:1},{id:leather_leggings,tag:{display:{color:16351261}},Count:1},{id:leather_chestplate,tag:{display:{color:16351261}},Count:1},{id:red_sandstone_stairs,Count:1}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],HandItems:[{id:wooden_axe,Count:1},{}],HandDropChances:[0.05F,0F]}, Weight: 1}]}
#Axe Skeleton
execute if predicate tid:random_15 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton",Tags:["potion_carrier_summoner"],ArmorItems:[{id:chainmail_boots,Count:1},{id:chainmail_leggings,Count:1},{id:diamond_chestplate,Count:1},{}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],HandItems:[{id:wooden_axe,Count:1},{}],HandDropChances:[0.05F,0F]}, Weight: 1}]}
#Wither Skeleton
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:wither_skeleton",Tags:["potion_carrier_summoner"]}, Weight: 1}]}
