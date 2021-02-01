#Build the platform
fill ~2 ~-2 ~2 ~-2 ~-2 ~-2 obsidian

#Decide which spawner to place
#War Pig 3
setblock ~ ~ ~ spawner{MaxNearbyEntities: 3s, RequiredPlayerRange: 16s, SpawnCount: 4s, MinSpawnDelay: 200s, MaxSpawnDelay: 800s, Delay: 40s, SpawnRange: 4s, SpawnPotentials: [{Entity: {id: "minecraft:zombified_piglin",CanBreakDoors:1,CustomName:'[{"text":"War Pig"}]',Health:25,HandItems:[{id:crossbow,Count:1,tag:{Enchantments:[{id:piercing,lvl:10}]}}],HandDropChances:[0.01f],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:netherite_chestplate,Count:1},{id:iron_helmet,Count:1}],ArmorDropChances:[0.01f,0.01f,0f,0.01f],Attributes:[{Name:"generic.max_health",Base:25F},{Name:"generic.movement_speed",Base:0.2f},{Name:"generic.armor",Base:-4f}],Tags:["war_pig","power_high"],DeathLootTable: "tid:entities/war_pig"}, Weight: 1}]}
