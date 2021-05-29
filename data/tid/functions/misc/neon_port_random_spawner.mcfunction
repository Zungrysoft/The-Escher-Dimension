#Delete the Command Block
setblock ~ ~ ~ air
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Pick a random monster spawner
#Regular mob
execute if predicate tid:random_60 run function tid:misc/neon_random_spawner
#Ballistic Commando
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 10s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:skeleton",CustomName:'[{"text":"Ballistic Commando"}]',HandItems:[{id:bow,Count:1},{id:tipped_arrow,tag:{CustomPotionColor:1328383,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CustomPotionEffects:[{Id:27,Duration:1,Amplifier:13}]},Count:1}],ArmorItems:[{id:leather_boots,tag:{display:{color:1328383}},Count:1},{id:leather_leggings,tag:{display:{color:1328383}},Count:1},{id:leather_chestplate,tag:{display:{color:1328383}},Count:1},{id:yellow_stained_glass,Count:1}],HandDropChances:[0F,0F],ArmorDropChances:[0F,0F,0F,0F],DeathLootTable:"tid:entities/ballistic_commando",Tags:["ballistic_commando"]}, Weight: 1}]}
