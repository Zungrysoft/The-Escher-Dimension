#Message to notify that the world is being built
say Generating dungeons...

#Storehouse for orange wool
execute in tid:layer_4 run fill 1000 1 1000 1032 28 1032 minecraft:bedrock
execute in tid:layer_4 run fill 1001 1 1001 1032 27 1032 minecraft:orange_wool
execute in tid:layer_4 run fill 1000 129 1000 1032 156 1032 minecraft:blue_wool
#Storehouse for yellow wool
execute in tid:layer_4 run fill 1033 1 1033 1065 28 1065 minecraft:bedrock
execute in tid:layer_4 run fill 1033 1 1033 1064 27 1064 minecraft:yellow_wool
execute in tid:layer_4 run fill 1033 129 1033 1065 156 1065 minecraft:blue_wool
#Storehouse for green wool
execute in tid:layer_4 run fill 1000 1 1033 1032 28 1065 minecraft:bedrock
execute in tid:layer_4 run fill 1 1 33 32 27 64 minecraft:green_wool
execute in tid:layer_4 run fill 1000 129 1032 1065 156 1065 minecraft:blue_wool
#Storehouse for purple wool
execute in tid:layer_4 run fill 1033 1 1000 1065 28 1032 minecraft:bedrock
execute in tid:layer_4 run fill 1033 1 1001 1064 27 1032 minecraft:purple_wool
execute in tid:layer_4 run fill 1033 129 1000 1065 156 1032 minecraft:blue_wool

#Determine the number of rooms to generate
scoreboard players set station_rooms value 300

#Summon the entrance rooms
execute positioned -16 42 40 run dungeon/station/cave_expand

#Done, now move to the next phase
scoreboard players set layer_4_handler_phase value 11

