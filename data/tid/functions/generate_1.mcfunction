#Message to notify that the world is being built
say Your goal is to collect 3 gold blocks and 1 netherite ingot
say Please wait while the dungeons generate...

#Spawn Platform (Temporary)
execute in tid:layer_1 run fill -5 55 -5 5 60 5 minecraft:bedrock
execute in tid:layer_1 run fill -4 55 -4 4 59 4 minecraft:air
execute in tid:layer_1 run fill -5 54 -5 5 54 5 minecraft:bedrock
execute in tid:layer_1 run fill -6 55 -6 6 61 6 minecraft:stone_bricks replace minecraft:stone
execute in tid:layer_1 run fill -5 182 -5 5 188 5 minecraft:blue_wool
execute in tid:layer_1 run setblock 2 55 2 torch
execute in tid:layer_1 run setblock -2 55 2 torch
execute in tid:layer_1 run setblock 2 55 -2 torch
execute in tid:layer_1 run setblock -2 55 -2 torch
#Storehouse for orange wool
execute in tid:layer_1 run fill 0 1 0 32 28 32 minecraft:bedrock
execute in tid:layer_1 run fill 1 1 1 32 27 32 minecraft:orange_wool
execute in tid:layer_1 run fill 0 129 0 32 156 32 minecraft:blue_wool
#Storehouse for yellow wool
execute in tid:layer_1 run fill 33 1 33 65 28 65 minecraft:bedrock
execute in tid:layer_1 run fill 33 1 33 64 27 64 minecraft:yellow_wool
execute in tid:layer_1 run fill 33 129 33 65 156 65 minecraft:blue_wool
#Storehouse for green wool
execute in tid:layer_1 run fill 0 1 33 32 28 65 minecraft:bedrock
execute in tid:layer_1 run fill 1 1 33 32 27 64 minecraft:green_wool
execute in tid:layer_1 run fill 0 129 32 65 156 65 minecraft:blue_wool
#Storehouse for purple wool
execute in tid:layer_1 run fill 33 1 0 65 28 32 minecraft:bedrock
execute in tid:layer_1 run fill 33 1 1 64 27 32 minecraft:purple_wool
execute in tid:layer_1 run fill 33 129 0 65 156 32 minecraft:blue_wool

#Create an Armor Stand for carrying the global number of rooms generated
execute in tid:layer_1 run kill @e[type=minecraft:armor_stand,name="global"]
execute in tid:layer_1 run summon minecraft:armor_stand 1 1 1 {CustomName:"\"global\""}
execute in tid:layer_1 run scoreboard players set @e[name="global"] tries 300

#Summon the starting room
execute in tid:layer_1 run summon minecraft:area_effect_cloud 0 55 -5 {Duration:99999999,CustomName:"\"station_entrance_spawner\""}
