#Carve
fill ~-10 ~ ~-10 ~10 ~7 ~10 end_stone
fill ~-10 255 ~-10 ~10 255 ~10 end_stone replace black_concrete

#Put markers for the patterns
execute if predicate tid:random_20 positioned ~10 ~4 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"moon_moss_start\""}
execute if predicate tid:random_20 positioned ~-10 ~4 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"moon_moss_start\""}
execute if predicate tid:random_20 positioned ~ ~4 ~10 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"moon_moss_start\""}
execute if predicate tid:random_20 positioned ~ ~4 ~-10 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"moon_moss_start\""}
