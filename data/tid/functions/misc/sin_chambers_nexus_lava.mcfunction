#Create the starting lava
fill ~4 ~-1 ~6 ~4 ~-1 ~2 lava
fill ~6 ~-1 ~4 ~2 ~-1 ~4 lava
fill ~6 ~-131 ~6 ~4 ~-131 ~4 blue_wool

#Summon the movers
summon minecraft:area_effect_cloud ~4 ~-1 ~6 {Duration:99999999,CustomName:"\"lava_mover\""}
summon minecraft:area_effect_cloud ~4 ~-1 ~2 {Duration:99999999,CustomName:"\"lava_mover\""}
summon minecraft:area_effect_cloud ~6 ~-1 ~4 {Duration:99999999,CustomName:"\"lava_mover\""}
summon minecraft:area_effect_cloud ~2 ~-1 ~4 {Duration:99999999,CustomName:"\"lava_mover\""}