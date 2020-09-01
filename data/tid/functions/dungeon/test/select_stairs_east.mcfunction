#Grab blocks
clone ~-2 ~-121 ~-2 ~7 ~-173 ~4 ~-2 ~-45 ~-2 masked
clone ~-2 ~-174 ~-2 ~7 ~-218 ~4 ~-2 ~-90 ~-2 masked

#Fill the region
fill ~-2 ~1 ~-2 ~2 ~7 ~4 air replace orange_wool

fill ~3 ~1 ~-2 ~3 ~1 ~4 sandstone_stairs[facing=east] replace orange_wool
fill ~3 ~2 ~-2 ~3 ~7 ~4 air replace orange_wool

fill ~4 ~1 ~-2 ~4 ~1 ~4 cut_sandstone replace orange_wool
fill ~4 ~2 ~-2 ~4 ~2 ~4 sandstone_stairs[facing=east] replace orange_wool
fill ~4 ~3 ~-2 ~4 ~7 ~4 air replace orange_wool

fill ~5 ~1 ~-2 ~5 ~2 ~4 cut_sandstone replace orange_wool
fill ~5 ~3 ~-2 ~5 ~3 ~4 sandstone_stairs[facing=east] replace orange_wool
fill ~5 ~4 ~-2 ~5 ~7 ~4 air replace orange_wool

fill ~6 ~1 ~-2 ~7 ~3 ~4 cut_sandstone replace orange_wool
fill ~6 ~4 ~-2 ~7 ~7 ~4 air replace orange_wool

fill ~-2 ~ ~-2 ~7 ~-45 ~4 cut_sandstone replace orange_wool
fill ~-2 ~-45 ~-2 ~7 ~-90 ~4 cut_sandstone replace orange_wool

#Mark this area as generated
fill ~ ~-130 ~ ~5 ~-121 ~2 air

#Summon doorway entities
summon minecraft:area_effect_cloud ~1 ~1 ~ {Duration:99999999,CustomName:"\"test_north\""}
summon minecraft:area_effect_cloud ~1 ~4 ~5 {Duration:99999999,CustomName:"\"test_south\""}
summon minecraft:area_effect_cloud ~2 ~1 ~1 {Duration:99999999,CustomName:"\"test_east\""}
summon minecraft:area_effect_cloud ~ ~1 ~1 {Duration:99999999,CustomName:"\"test_west\""}

#Count the room in the total
scoreboard players remove test_rooms value 1

#We're done here
kill @s

