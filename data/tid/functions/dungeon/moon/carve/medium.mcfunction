#Carve
fill ~-11 ~-1 ~-11 ~11 ~8 ~11 end_stone replace stone
fill ~-10 ~ ~-10 ~10 ~7 ~10 air replace end_stone

#Put markers for the patterns
execute if predicate tid:random_20 positioned ~11 ~4 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"moon_moss_start\""}
execute if predicate tid:random_20 positioned ~-11 ~4 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"moon_moss_start\""}
execute if predicate tid:random_20 positioned ~ ~4 ~11 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"moon_moss_start\""}
execute if predicate tid:random_20 positioned ~ ~4 ~-11 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"moon_moss_start\""}
