#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
#Tower Cultist
execute if predicate tid:random_33 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:vindicator",CustomName:'[{"text":"Tower Cultist"}]',HandItems:[{id:golden_sword,tag:{Enchantments:[{id:"minecraft:sweeping",lvl:2}]},Count:1}],HandDropChances:[0.01f],ArmorItems:[{id:iron_boots,tag:{display:{Name:'[{"text":"Titanium Spurs","italic":false,"color":"green"}]',Lore:['[{"text":"Destroys cobwebs on touch","italic":false,"color":"aqua"}]']},spurs:1b},Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:dark_oak_fence,Count:1}],ArmorDropChances:[0.05f,0.00f,0.00f,0.00f],DeathLootTable:""}, Weight: 1}]}
#Creeper
execute if predicate tid:random_10 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:creeper"}, Weight: 1}]}
#Cave Spider
execute if predicate tid:random_33 run setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:cave_spider"}, Weight: 1}]}
#Pillager
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:pillager",HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"minecraft:multishot",lvl:1}]}}]}, Weight: 1}]}
