#Grab blocks
clone ~-2 ~-121 ~-2 ~4 ~-173 ~7 ~-2 ~-45 ~-2 masked
clone ~-2 ~-174 ~-2 ~4 ~-218 ~7 ~-2 ~-90 ~-2 masked

#Fill the region
fill ~-2 ~1 ~-2 ~4 ~7 ~2 air replace orange_wool

fill ~-2 ~1 ~3 ~4 ~1 ~3 sandstone_stairs[facing=south] replace orange_wool
fill ~-2 ~2 ~3 ~4 ~7 ~3 air replace orange_wool

fill ~-2 ~1 ~4 ~4 ~1 ~4 cut_sandstone replace orange_wool
fill ~-2 ~2 ~4 ~4 ~2 ~4 sandstone_stairs[facing=south] replace orange_wool
fill ~-2 ~3 ~4 ~4 ~7 ~4 air replace orange_wool

fill ~-2 ~1 ~5 ~4 ~2 ~5 cut_sandstone replace orange_wool
fill ~-2 ~3 ~5 ~4 ~3 ~5 sandstone_stairs[facing=south] replace orange_wool
fill ~-2 ~4 ~5 ~4 ~7 ~5 air replace orange_wool

fill ~-2 ~1 ~6 ~4 ~3 ~7 cut_sandstone replace orange_wool
fill ~-2 ~4 ~6 ~4 ~7 ~7 air replace orange_wool

fill ~-2 ~ ~-2 ~4 ~-45 ~7 cut_sandstone replace orange_wool
fill ~-2 ~-45 ~-2 ~4 ~-90 ~7 cut_sandstone replace orange_wool

#Mark this area as generated
fill ~ ~-130 ~ ~2 ~-121 ~5 air

#Summon doorway entities
summon minecraft:area_effect_cloud ~ ~1 ~1 {Duration:99999999,CustomName:"\"test_west\""}
summon minecraft:area_effect_cloud ~5 ~4 ~1 {Duration:99999999,CustomName:"\"test_east\""}
summon minecraft:area_effect_cloud ~1 ~1 ~2 {Duration:99999999,CustomName:"\"test_west\""}
summon minecraft:area_effect_cloud ~1 ~1 ~ {Duration:99999999,CustomName:"\"test_north\""}

#Count the room in the total
scoreboard players remove test_rooms value 1

#We're done here
kill @s

