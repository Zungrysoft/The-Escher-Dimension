#Message to notify that the world is being built
say Please wait while the world generates...

#Set the cornerstone block
setblock 0 181 0 bedrock
#Storehouse for orange wool
fill 1000 129 1000 1033 156 1033 minecraft:bedrock
fill 1001 129 1001 1033 155 1033 minecraft:orange_wool
fill 1000 1 0 1032 28 1032 minecraft:air

#Create an entity for carrying the global number of rooms generated
kill @e[type=minecraft:area_effect_cloud,name="hellion_roomcount"]
summon minecraft:area_effect_cloud 1 1 1 {Duration:99999999,CustomName:"\"hellion_roomcount\""}
scoreboard players set @e[type=minecraft:area_effect_cloud,name="hellion_roomcount"] tries 0

summon minecraft:area_effect_cloud 0 183 -7 {Duration:99999999,CustomName:"\"hellion_north\""}
summon minecraft:area_effect_cloud 0 183 7 {Duration:99999999,CustomName:"\"hellion_south\""}
summon minecraft:area_effect_cloud -7 183 0 {Duration:99999999,CustomName:"\"hellion_west\""}
summon minecraft:area_effect_cloud 7 183 0 {Duration:99999999,CustomName:"\"hellion_east\""}

