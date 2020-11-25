#Message to notify that the world is being built
say Generating world...

#Storehouse for orange wool
fill 1000 129 1000 1033 156 1033 minecraft:bedrock
fill 1001 129 1001 1033 155 1033 minecraft:orange_wool
fill 1000 1 0 1032 28 1032 minecraft:air

#Determine the global room selection
scoreboard players set jungle_global value 0
execute if predicate tid:random_50 run scoreboard players add jungle_global value 1
execute if predicate tid:random_50 run scoreboard players add jungle_global value 2

#Determine the number of rooms to generate
scoreboard players set jungle_rooms value 350
scoreboard players set jungle_tower_rooms value 150

summon minecraft:area_effect_cloud 0 193 -7 {Duration:99999999,CustomName:"\"jungle_north\""}
summon minecraft:area_effect_cloud 0 193 7 {Duration:99999999,CustomName:"\"jungle_south\""}
summon minecraft:area_effect_cloud -7 193 0 {Duration:99999999,CustomName:"\"jungle_west\""}
summon minecraft:area_effect_cloud 7 193 0 {Duration:99999999,CustomName:"\"jungle_east\""}

#Done, now move to the next phase
scoreboard players set jungle_handler_phase value 20

