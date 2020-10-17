#Message to notify that the world is being built
say Generating the facility...
say (This one might take a while!)

#Storehouse for orange wool
fill 1000 1 1000 1032 28 1032 minecraft:bedrock
fill 1001 1 1001 1032 27 1032 minecraft:orange_wool
fill 1000 129 1000 1032 156 1032 minecraft:blue_wool
#Storehouse for yellow wool
fill 1033 1 1033 1065 28 1065 minecraft:bedrock
fill 1033 1 1033 1064 27 1064 minecraft:yellow_wool
fill 1033 129 1033 1065 156 1065 minecraft:blue_wool
#Storehouse for void_air
fill 1000 1 1033 1032 28 1065 minecraft:bedrock
fill 1001 1 1033 1032 27 1064 minecraft:void_air
fill 1000 129 1032 1065 156 1065 minecraft:blue_wool
#Storehouse for air
fill 1033 1 1000 1065 28 1032 minecraft:bedrock
fill 1033 1 1001 1064 27 1032 minecraft:air
fill 1033 129 1000 1065 156 1032 minecraft:blue_wool

#Spread the space savers in the (-, -) quadrant
#function tid:misc/infernal_space_savers
#function tid:misc/infernal_space_savers
#function tid:misc/infernal_space_savers
#function tid:misc/infernal_space_savers

#Determine the number of rooms to generate
scoreboard players set infernal_rooms value 10

summon minecraft:area_effect_cloud 0 55 -7 {Duration:99999999,CustomName:"\"infernal_north\""}
summon minecraft:area_effect_cloud 0 55 7 {Duration:99999999,CustomName:"\"infernal_south\""}
#summon minecraft:area_effect_cloud -7 55 0 {Duration:99999999,CustomName:"\"infernal_west\""}
#summon minecraft:area_effect_cloud 7 55 0 {Duration:99999999,CustomName:"\"infernal_east\""}

#Done, now move to the next phase
scoreboard players set infernal_handler_phase value 20

