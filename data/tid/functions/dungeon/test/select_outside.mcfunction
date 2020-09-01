#Grab blocks
clone ~-2 ~-124 ~-2 ~4 ~-173 ~4 ~-2 ~-45 ~-2 masked
clone ~-2 ~-174 ~-2 ~4 ~-218 ~4 ~-2 ~-90 ~-2 masked

#Fill the region
fill ~-2 ~1 ~-2 ~4 ~4 ~4 air replace orange_wool
fill ~-2 ~ ~-2 ~4 ~-45 ~4 cut_sandstone replace orange_wool
fill ~-2 ~-45 ~-2 ~4 ~-90 ~4 cut_sandstone replace orange_wool

#Mark this area as generated
fill ~ ~-130 ~ ~2 ~-124 ~2 air

#Count the room in the total
scoreboard players remove test_rooms value 1

#Summon doorway entities
summon minecraft:area_effect_cloud ~1 ~1 ~ {Duration:99999999,CustomName:"\"test_north\""}
summon minecraft:area_effect_cloud ~1 ~1 ~2 {Duration:99999999,CustomName:"\"test_south\""}
summon minecraft:area_effect_cloud ~2 ~1 ~1 {Duration:99999999,CustomName:"\"test_east\""}
summon minecraft:area_effect_cloud ~ ~1 ~1 {Duration:99999999,CustomName:"\"test_west\""}

#We're done here
kill @s

