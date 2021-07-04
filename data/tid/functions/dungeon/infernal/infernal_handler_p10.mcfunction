#Message to notify that the world is being built
say Generating the facility...

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

#Determine the number of rooms to generate
scoreboard players set infernal_rooms value 1000
scoreboard players set infernal_glassbridge_rooms value 30
scoreboard players set power_drills value 5
scoreboard players set elytras value 2
scoreboard players set infernal_secrets value 2
scoreboard players set infernal_nexuses_built value 0
scoreboard players set infernal_built_towers value 0

#Reserve the space above the spawn so lava doesn't pour onto it
fill -7 179 -7 7 254 7 blue_wool 

#Spread the factories
function tid:dungeon/infernal/scatter_factories

#Add the starting bridge piece
summon minecraft:area_effect_cloud 0 55 -7 {Duration:99999999,CustomName:"\"infernal_glassbridge_north\""}

#Done, now move to the next phase
scoreboard players set infernal_handler_phase value 18
