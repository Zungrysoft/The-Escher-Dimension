#Message to notify that the world is being built
say Generating Dungeons...

#Storehouse for orange wool
fill 1000 1 1000 1032 28 1032 minecraft:bedrock
fill 1001 1 1001 1032 27 1032 minecraft:orange_wool
fill 1000 129 1000 1032 156 1032 minecraft:blue_wool
#Storehouse for yellow wool
fill 1033 1 1033 1065 28 1065 minecraft:bedrock
fill 1033 1 1033 1064 27 1064 minecraft:yellow_wool
fill 1033 129 1033 1065 156 1065 minecraft:blue_wool
#Storehouse for green wool
fill 1000 1 1033 1032 28 1065 minecraft:bedrock
fill 1001 1 1033 1032 27 1064 minecraft:green_wool
fill 1000 129 1032 1065 156 1065 minecraft:blue_wool
#Storehouse for purple wool
fill 1033 1 1000 1065 28 1032 minecraft:bedrock
fill 1033 1 1001 1064 27 1032 minecraft:air
fill 1033 129 1000 1065 156 1032 minecraft:blue_wool

#Determine the number of rooms to generate
scoreboard players set soulsand_rooms value 250
scoreboard players set ravine_rooms value 250
scoreboard players set nature_rooms value 250
scoreboard players set neon_rooms value 30

#Summon the entrance rooms and starting area
function tid:dungeon/intro/generate_layer_2

#execute positioned 0 55 -24 positioned ~-6 ~-5 ~-21 run function tid:dungeon/nature/select_entrance_north
execute positioned 24 55 0 positioned ~1 ~-1 ~-6 run function tid:dungeon/soulsand/select_entrance_east
#execute positioned -24 55 0 positioned ~1 ~-1 ~-4 run function tid:dungeon/ravine/select_entranace_west
execute positioned 0 55 24 positioned ~-5 ~-14 ~1 run function tid:dungeon/neon/select_entrance_south

#Done, now move to the next phase
scoreboard players set layer_2_handler_phase value 20

