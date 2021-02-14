#Message to notify that the world is being built
say Growing Caverns...

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
fill 1001 1 1033 1032 27 1064 minecraft:orange_wool
fill 1000 129 1032 1065 156 1065 minecraft:blue_wool
#Storehouse for purple wool
fill 1033 1 1000 1065 28 1032 minecraft:bedrock
fill 1033 1 1001 1064 27 1032 minecraft:purple_wool
fill 1033 129 1000 1065 156 1032 minecraft:blue_wool

#Determine the number of rooms to generate
scoreboard players set layer_3_handler_counter value 55
scoreboard players set station_rooms value 350
scoreboard players set moon_segments value 150
scoreboard players set moon_rooms value 400
scoreboard players set mutant_rooms value 140

#Reset various tracking scores
scoreboard players set jungle_portals value 0
scoreboard players set infernal_portals value 0
scoreboard players set station_secrets value 0
scoreboard players set mutant_arenas value 0

#Determine the global room selections
scoreboard players set station_global value 0
execute if predicate tid:random_50 run scoreboard players add station_global value 1
execute if predicate tid:random_50 run scoreboard players add station_global value 2
scoreboard players set moon_global value 0
execute if predicate tid:random_50 run scoreboard players add moon_global value 1
execute if predicate tid:random_50 run scoreboard players add moon_global value 2
scoreboard players set mutant_global value 0
execute if predicate tid:random_50 run scoreboard players add mutant_global value 1
execute if predicate tid:random_50 run scoreboard players add mutant_global value 2

#Summon the entrance rooms and starting area
function tid:dungeon/layer_3/generate_intro

execute positioned -16 42 -60 run function tid:dungeon/station/cave_expand

#Done, now move to the next phase
scoreboard players set layer_3_handler_phase value 11

