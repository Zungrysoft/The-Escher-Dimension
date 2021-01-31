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
fill 1033 1 1001 1064 27 1032 minecraft:purple_wool
fill 1033 129 1000 1065 156 1032 minecraft:blue_wool

#Determine the number of rooms to generate
scoreboard players set stronghold2_rooms value 250
scoreboard players set brick_rooms value 250
scoreboard players set ice_rooms value 250

#Reset some other misc scoreboard values
scoreboard players set monument_complete value 0
scoreboard players set hellion_portals value 0
scoreboard players set layer_2_portals value 0
scoreboard players set stronghold2_secrets value 0

#Determine the global room selections
scoreboard players set stronghold2_global value 0
execute if predicate tid:random_50 run scoreboard players add stronghold2_global value 1
execute if predicate tid:random_50 run scoreboard players add stronghold2_global value 2
scoreboard players set brick_global value 0
execute if predicate tid:random_50 run scoreboard players add brick_global value 1
execute if predicate tid:random_50 run scoreboard players add brick_global value 2
scoreboard players set ice_global value 0
execute if predicate tid:random_50 run scoreboard players add ice_global value 1
execute if predicate tid:random_50 run scoreboard players add ice_global value 2

#Summon the entrance rooms and starting area
execute positioned 0 55 -7 positioned ~-16 ~-1 ~-38 run function tid:dungeon/layer_1/select_entrance
execute positioned 0 55 -7 positioned ~-15 ~-1 ~-25 run function tid:dungeon/layer_1/select_yard
execute positioned 0 55 -7 positioned ~-3 ~ ~-18 run function tid:dungeon/layer_1/select_hallway

execute positioned 0 59 -45 positioned ~-6 ~-5 ~-21 run function tid:dungeon/stronghold2/select_entrance_north
execute positioned -16 59 -42 positioned ~-22 ~-20 ~-7 run function tid:dungeon/brick/select_entrance_west
execute positioned 16 59 -42 positioned ~1 ~-6 ~-6 run function tid:dungeon/ice/select_entrance_east

#Done, now move to the next phase
scoreboard players set layer_1_handler_phase value 20

