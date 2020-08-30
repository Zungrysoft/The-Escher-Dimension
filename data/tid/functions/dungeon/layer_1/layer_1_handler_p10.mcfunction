#Message to notify that the world is being built
say Generating Dungeons...

#Storehouse for orange wool
execute in tid:layer_1 run fill 1000 1 1000 1032 28 1032 minecraft:bedrock
execute in tid:layer_1 run fill 1001 1 1001 1032 27 1032 minecraft:orange_wool
execute in tid:layer_1 run fill 1000 129 1000 1032 156 1032 minecraft:blue_wool
#Storehouse for yellow wool
execute in tid:layer_1 run fill 1033 1 1033 1065 28 1065 minecraft:bedrock
execute in tid:layer_1 run fill 1033 1 1033 1064 27 1064 minecraft:yellow_wool
execute in tid:layer_1 run fill 1033 129 1033 1065 156 1065 minecraft:blue_wool
#Storehouse for green wool
execute in tid:layer_1 run fill 1000 1 1033 1032 28 1065 minecraft:bedrock
execute in tid:layer_1 run fill 1 1 33 32 27 64 minecraft:green_wool
execute in tid:layer_1 run fill 1000 129 1032 1065 156 1065 minecraft:blue_wool
#Storehouse for purple wool
execute in tid:layer_1 run fill 1033 1 1000 1065 28 1032 minecraft:bedrock
execute in tid:layer_1 run fill 1033 1 1001 1064 27 1032 minecraft:purple_wool
execute in tid:layer_1 run fill 1033 129 1000 1065 156 1032 minecraft:blue_wool

#Determine the number of rooms to generate
scoreboard players set stronghold2_rooms value 250

#Summon the entrance rooms and starting area
execute positioned 0 55 -7 positioned ~-16 ~-1 ~-38 run function tid:dungeon/intro/select_entrance
execute positioned 0 55 -7 positioned ~-15 ~-1 ~-25 run function tid:dungeon/intro/select_yard
execute positioned 0 55 -7 positioned ~-3 ~ ~-18 run function tid:dungeon/intro/select_hallway

execute positioned 0 59 -45 positioned ~-6 ~-5 ~-21 run function tid:dungeon/stronghold2/select_entrance_north

#Done, now move to the next phase
scoreboard players set layer_1_handler_phase value 20

