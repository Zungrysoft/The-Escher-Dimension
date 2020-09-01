#Grab blocks
clone ~-2 ~-121 ~-2 ~7 ~-173 ~4 ~-2 ~-45 ~-2 masked
clone ~-2 ~-174 ~-2 ~7 ~-218 ~4 ~-2 ~-90 ~-2 masked

#Fill the region
fill ~-2 ~1 ~-2 ~-1 ~3 ~4 cut_sandstone replace orange_wool
fill ~-2 ~4 ~-2 ~-1 ~7 ~4 air replace orange_wool

fill ~ ~1 ~-2 ~ ~2 ~4 cut_sandstone replace orange_wool
fill ~ ~3 ~-2 ~ ~3 ~4 sandstone_stairs[facing=west] replace orange_wool
fill ~ ~4 ~-2 ~ ~7 ~4 air replace orange_wool

fill ~1 ~1 ~-2 ~1 ~1 ~4 cut_sandstone replace orange_wool
fill ~1 ~2 ~-2 ~1 ~2 ~4 sandstone_stairs[facing=west] replace orange_wool
fill ~1 ~3 ~-2 ~1 ~7 ~4 air replace orange_wool

fill ~2 ~1 ~-2 ~2 ~1 ~4 sandstone_stairs[facing=west] replace orange_wool
fill ~2 ~2 ~-2 ~2 ~7 ~4 air replace orange_wool

fill ~3 ~1 ~-2 ~7 ~7 ~4 air replace orange_wool

fill ~-2 ~ ~-2 ~7 ~-45 ~4 cut_sandstone replace orange_wool
fill ~-2 ~-45 ~-2 ~7 ~-90 ~4 cut_sandstone replace orange_wool

#Mark this area as generated
fill ~ ~-130 ~ ~5 ~-121 ~2 air

#Summon doorway entities
summon minecraft:area_effect_cloud ~ ~4 ~1 {Duration:99999999,CustomName:"\"test_west\""}
summon minecraft:area_effect_cloud ~5 ~1 ~1 {Duration:99999999,CustomName:"\"test_east\""}
summon minecraft:area_effect_cloud ~4 ~1 ~2 {Duration:99999999,CustomName:"\"test_south\""}
summon minecraft:area_effect_cloud ~4 ~1 ~ {Duration:99999999,CustomName:"\"test_north\""}

#Count the room in the total
scoreboard players remove test_rooms value 1

#We're done here
kill @s

