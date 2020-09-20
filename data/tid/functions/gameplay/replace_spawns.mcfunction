#Remove Baby Zombies from the spawning pool
execute as @e[type=minecraft:zombie,nbt={IsBaby:1b},name=!"Fireflare",predicate=tid:in_layer_1] at @s run function tid:gameplay/layer_1_spawns
execute as @e[type=minecraft:zombie,nbt={IsBaby:1b},name=!"Fireflare",predicate=tid:in_layer_3] at @s run function tid:gameplay/layer_3_spawns
tp @e[type=minecraft:zombie,nbt={IsBaby:1b},name=!"Fireflare"] 1 -100 1

#Convert Zombie Villagers to Debris Demons in Infernal Industries
execute at @e[type=minecraft:zombie_villager,predicate=tid:in_layer_infernal] run summon minecraft:husk ~ ~ ~ {CanBreakDoors:1,CustomName:"\"Debris Demon\"",Health:30,HandItems:[{id:netherite_pickaxe,Count:1}],HandDropChances:[0.00F],ArmorItems:[{id:netherite_boots,Count:1},{id:netherite_leggings,Count:1},{id:netherite_chestplate,Count:1},{id:ancient_debris,Count:1}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],Attributes:[{Name:"generic.max_health",Base:30F}],DeathLootTable: "tid:entities/debris_demon"}
tp @e[type=minecraft:zombie_villager,predicate=tid:in_layer_infernal] 1 -100 1

#Convert Zombies to Dye Zombies in Infernal Industries
execute at @e[type=minecraft:zombie,predicate=tid:in_layer_infernal,tag=!keep,name=!"Fireflare"] run summon minecraft:zombie ~ ~ ~ {HandItems:[{id:black_dye,Count:1}],HandDropChances:[1.00F],Tags:["keep"]}
tp @e[type=minecraft:zombie,predicate=tid:in_layer_infernal,tag=!keep,name=!"Fireflare"] 1 -100 1

#Convert Cod to Dye Zombies in Jungle
execute at @e[type=minecraft:cod,predicate=tid:in_layer_jungle] run summon minecraft:drowned ~ ~ ~ {HandItems:[{id:blue_dye,Count:1}],HandDropChances:[1.00F],Tags:["keep"]}
tp @e[type=minecraft:cod,predicate=tid:in_layer_jungle] 1 -100 1

#Kill any Ghasts that spawn in Infernal Industries
tp @e[type=minecraft:ghast,predicate=tid:in_layer_infernal] 1 -100 1

#Handles spawning in Sin City
execute as @e[type=minecraft:creeper,tag=!keep,predicate=tid:in_layer_sin] at @s run function tid:gameplay/district_spawns
execute as @e[type=minecraft:skeleton,tag=!keep,predicate=tid:in_layer_sin] at @s run function tid:gameplay/district_spawns
execute as @e[type=minecraft:spider,tag=!keep,predicate=tid:in_layer_sin] at @s run function tid:gameplay/district_spawns
execute as @e[type=minecraft:zombie,tag=!keep,predicate=tid:in_layer_sin] at @s run function tid:gameplay/district_spawns
execute as @e[type=minecraft:enderman,tag=!keep,predicate=tid:in_layer_sin] at @s run function tid:gameplay/district_spawns
execute as @e[type=minecraft:witch,tag=!keep,predicate=tid:in_layer_sin] at @s run function tid:gameplay/district_spawns
execute as @e[type=minecraft:piglin,tag=!keep,predicate=tid:in_layer_sin] at @s run function tid:gameplay/district_spawns

#Handles spawning in Hellion Heights
execute as @e[type=minecraft:magma_cube,tag=!keep,predicate=tid:in_layer_hellion,nbt={Size:3}] at @s run function tid:gameplay/hellion_spawns

#Handles Illusioner spawning in Reliquary Outpost
execute as @e[type=minecraft:illusioner,predicate=tid:in_layer_jungle,tag=!keep] at @s run function tid:gameplay/jungle_spawns