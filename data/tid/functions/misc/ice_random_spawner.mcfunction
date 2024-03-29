#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Decide which spawner to place
#Frostbite Archer
execute if predicate tid:random_25 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 12s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 30s, SpawnRange: 5s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton", CustomName:'[{"text":"Frostbite Archer"}]',HandItems:[{id:bow,Count:1},{id:tipped_arrow,Count:1,tag:{CustomPotionColor:4738376,CustomPotionEffects:[{Id:18,Duration:80,Amplifier:0}]}}],HandDropChances:[0F,0F],ArmorItems:[{},{},{},{id:blue_ice,Count:1}],ArmorDropChances:[0F,0F,0F,0F],Tags:["frostbite_archer"],Health:12,DeathLootTable: "tid:entities/frostbite_archer"}, Weight: 1}]}
#Spider
execute if predicate tid:random_25 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 30s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:spider"}, Weight: 1}]}
#Zombie
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 30s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombie"}, Weight: 1}]}
