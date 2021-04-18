#Base
fill ~1 ~ ~2 ~-1 ~ ~-2 diorite
fill ~2 ~ ~1 ~-2 ~ ~-1 diorite
fill ~1 ~1 ~1 ~-1 ~1 ~-1 diorite
fill ~ ~2 ~1 ~ ~2 ~-1 diorite
fill ~1 ~2 ~ ~-1 ~2 ~ diorite
setblock ~ ~3 ~ diorite

#Randomization
function tid:misc/intro_diorite_pile

#Marker entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["diorite"]}
