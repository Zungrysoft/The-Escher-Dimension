#Message to notify that the world is being built
say Generating world...

#Storehouse for orange wool
fill 1000 129 1000 1033 156 1033 minecraft:bedrock
fill 1001 129 1001 1033 155 1033 minecraft:orange_wool
fill 1000 1 0 1032 28 1032 minecraft:air

#Spread the space savers in the (-, -) quadrant
function tid:misc/hellion_space_savers
function tid:misc/hellion_space_savers
function tid:misc/hellion_space_savers
function tid:misc/hellion_space_savers

#Determine the number of rooms to generate
scoreboard players set hellion_rooms value 350

#Determine the global room selections
scoreboard players set hellion_global value 0
execute if predicate tid:random_50 run scoreboard players set hellion_global value 1

summon minecraft:area_effect_cloud 0 183 -7 {Duration:99999999,CustomName:"\"hellion_north\""}
summon minecraft:area_effect_cloud 0 183 7 {Duration:99999999,CustomName:"\"hellion_south\""}
summon minecraft:area_effect_cloud -7 183 0 {Duration:99999999,CustomName:"\"hellion_west\""}
summon minecraft:area_effect_cloud 7 183 0 {Duration:99999999,CustomName:"\"hellion_east\""}

#Done, now move to the next phase
scoreboard players set hellion_handler_phase value 20

