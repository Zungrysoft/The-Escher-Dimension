#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
#Poison (Rare)
execute if predicate tid:random_02 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 100s, RequiredPlayerRange: 10s, SpawnCount: 1s, MinSpawnDelay: 3s, MaxSpawnDelay: 3s, Delay: 1s, SpawnRange: 0s, SpawnPotentials: [{Entity: {id: "minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:poison"}}}, Weight: 1}]}
#Slowness (Rare)
execute if predicate tid:random_02 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 100s, RequiredPlayerRange: 10s, SpawnCount: 1s, MinSpawnDelay: 3s, MaxSpawnDelay: 3s, Delay: 1s, SpawnRange: 0s, SpawnPotentials: [{Entity: {id: "minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:slowness"}}}, Weight: 1}]}
#Weakness (Rare)
execute if predicate tid:random_02 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 100s, RequiredPlayerRange: 10s, SpawnCount: 1s, MinSpawnDelay: 3s, MaxSpawnDelay: 3s, Delay: 1s, SpawnRange: 0s, SpawnPotentials: [{Entity: {id: "minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:weakness"}}}, Weight: 1}]}
#Healing (Rare)
execute if predicate tid:random_01 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 100s, RequiredPlayerRange: 10s, SpawnCount: 1s, MinSpawnDelay: 3s, MaxSpawnDelay: 3s, Delay: 1s, SpawnRange: 0s, SpawnPotentials: [{Entity: {id: "minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:healing"}}}, Weight: 1}]}
#Invisibility (Very Rare)
execute if predicate tid:random_003 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 100s, RequiredPlayerRange: 10s, SpawnCount: 1s, MinSpawnDelay: 3s, MaxSpawnDelay: 3s, Delay: 1s, SpawnRange: 0s, SpawnPotentials: [{Entity: {id: "minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:invisibility"}}}, Weight: 1}]}
#Harming (Default)
setblock ~ ~ ~ spawner{MaxNearbyEntities: 100s, RequiredPlayerRange: 10s, SpawnCount: 1s, MinSpawnDelay: 3s, MaxSpawnDelay: 3s, Delay: 1s, SpawnRange: 0s, SpawnPotentials: [{Entity: {id: "minecraft:potion",Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming"}}}, Weight: 1}]}
