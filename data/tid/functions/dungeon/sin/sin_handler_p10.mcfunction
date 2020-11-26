#Carve the caves first
say Carving Caves...
function tid:dungeon/sin/cave_scatter

#Replace bedrock cage if it was destroyed by the cave carving
execute positioned 0 182 0 run function tid:general/bedrock_cage

#Message to notify that the world is being built
say Generating world...

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
#Storehouse for air
fill 1033 1 1000 1065 28 1032 minecraft:bedrock
fill 1033 1 1001 1064 27 1032 minecraft:air
fill 1033 129 1000 1065 156 1032 minecraft:blue_wool

#Add roughness to cave floors

#Determine the global room selection
scoreboard players set sin_chambers_global value 0
execute if predicate tid:random_50 run scoreboard players add sin_chambers_global value 1
execute if predicate tid:random_50 run scoreboard players add sin_chambers_global value 2

#Determine the number of rooms to generate
scoreboard players set sin_rooms value 300
scoreboard players set sin_chambers_rooms value 200

summon minecraft:area_effect_cloud 0 183 -7 {Duration:99999999,CustomName:"\"sin_north\""}
summon minecraft:area_effect_cloud 0 183 7 {Duration:99999999,CustomName:"\"sin_south\""}
summon minecraft:area_effect_cloud -7 183 0 {Duration:99999999,CustomName:"\"sin_west\""}
summon minecraft:area_effect_cloud 7 183 0 {Duration:99999999,CustomName:"\"sin_east\""}

#Done, now move to the next phase
scoreboard players set sin_handler_phase value 20
