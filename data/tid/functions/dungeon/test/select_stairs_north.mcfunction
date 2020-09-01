#Grab blocks
clone ~-2 ~-121 ~-2 ~4 ~-173 ~7 ~-2 ~-45 ~-2 masked
clone ~-2 ~-174 ~-2 ~4 ~-218 ~7 ~-2 ~-90 ~-2 masked

#Fill the region
fill ~-2 ~1 ~-2 ~4 ~3 ~-1 cut_sandstone replace orange_wool
fill ~-2 ~4 ~-2 ~4 ~7 ~-1 air replace orange_wool

fill ~-2 ~1 ~ ~4 ~2 ~ cut_sandstone replace orange_wool
fill ~-2 ~3 ~ ~4 ~3 ~ sandstone_stairs[facing=north] replace orange_wool
fill ~-2 ~4 ~ ~4 ~7 ~ air replace orange_wool

fill ~-2 ~1 ~1 ~4 ~1 ~1 cut_sandstone replace orange_wool
fill ~-2 ~2 ~1 ~4 ~2 ~1 sandstone_stairs[facing=north] replace orange_wool
fill ~-2 ~3 ~1 ~4 ~7 ~1 air replace orange_wool

fill ~-2 ~1 ~2 ~4 ~1 ~2 sandstone_stairs[facing=north] replace orange_wool
fill ~-2 ~2 ~2 ~4 ~7 ~2 air replace orange_wool

fill ~-2 ~1 ~3 ~4 ~7 ~7 air replace orange_wool

fill ~-2 ~ ~-2 ~4 ~-45 ~7 cut_sandstone replace orange_wool
fill ~-2 ~-45 ~-2 ~4 ~-90 ~7 cut_sandstone replace orange_wool

#Mark this area as generated
fill ~ ~-130 ~ ~2 ~-121 ~5 air

#Summon doorway entities
summon minecraft:area_effect_cloud ~1 ~4 ~ {Duration:99999999,CustomName:"\"test_north\""}
summon minecraft:area_effect_cloud ~1 ~1 ~5 {Duration:99999999,CustomName:"\"test_south\""}
summon minecraft:area_effect_cloud ~2 ~1 ~4 {Duration:99999999,CustomName:"\"test_east\""}
summon minecraft:area_effect_cloud ~ ~1 ~4 {Duration:99999999,CustomName:"\"test_west\""}

#Count the room in the total
scoreboard players remove test_rooms value 1

#We're done here
kill @s

