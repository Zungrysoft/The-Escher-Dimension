#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
#Sludge Spider
execute if predicate tid:random_10 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 12s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:spider",CustomName:'[{"text":"Sludge Spider"}]',ActiveEffects: [{ShowParticles:1b,Duration:999999999,Id:5b,Amplifier:1b}],Passengers:[{id: "minecraft:spider",CustomName:'[{"text":"Grumm"}]',ActiveEffects: [{ShowParticles:1b,Duration:999999999,Id:1b,Amplifier:1b}]}]}, Weight: 1}]}
#Horde Zombie
execute if predicate tid:random_20 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 10s, RequiredPlayerRange: 12s, SpawnCount: 17s, MinSpawnDelay: 600s, MaxSpawnDelay: 1000s, Delay: 20s, SpawnRange: 6s, SpawnPotentials: [{Entity: {id: "minecraft:zombie",CustomName:'[{"text":"Cordyceps Host"}]',Health:6,HandItems:[{id:warped_fungus,Count:1},{id:warped_fungus,Count:1}],HandDropChances:[0.00f,0.00f],ArmorItems:[{id:leather_boots,tag:{display:{color:4383684}},Count:1},{id:leather_leggings,tag:{display:{color:4380612}},Count:1},{id:leather_chestplate,tag:{display:{color:4376772}},Count:1},{id:warped_wart_block,Count:1}],ArmorDropChances:[0.00f,0.00f,0.00f,0.00f],Attributes:[{Name:"generic.max_health",Base:6F}],DeathLootTable:""}, Weight: 1}]}
#Phantom
execute if predicate tid:random_25 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 12s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 400s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:phantom"}, Weight: 1}]}
#Mutant War Pig
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 12s, SpawnCount: 2s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 100s, SpawnRange: 3s, SpawnPotentials: [{Entity: {id: "minecraft:armor_stand", Invisible:1,Tags:["spawncloud","war_pig_mutant"]}, Weight: 1}]}
