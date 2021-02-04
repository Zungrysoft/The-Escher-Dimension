#Floor
fill ~-2 ~0 ~-2 ~2 ~1 ~2 polished_blackstone_bricks

#Lava
fill ~-1 ~1 ~-1 ~1 ~1 ~1 lava

#Gold and chain
setblock ~ ~2 ~ air
setblock ~ ~3 ~ air
setblock ~ ~4 ~ gold_block

#Openings
fill ~2 ~2 ~1 ~2 ~5 ~-1 air
fill ~-2 ~2 ~1 ~-2 ~5 ~-1 air
fill ~1 ~2 ~2 ~-1 ~5 ~2 air
fill ~1 ~2 ~-2 ~-1 ~5 ~-2 air

#Corners
setblock ~2 ~3 ~2 magma_block
setblock ~-2 ~3 ~2 magma_block
setblock ~2 ~3 ~-2 magma_block
setblock ~-2 ~3 ~-2 magma_block

#Doorways
summon minecraft:area_effect_cloud ~ ~2 ~-2 {Duration:99999999,CustomName:"\"sin_chambers_north\""}
summon minecraft:area_effect_cloud ~ ~2 ~2 {Duration:99999999,CustomName:"\"sin_chambers_south\""}
summon minecraft:area_effect_cloud ~-2 ~2 ~ {Duration:99999999,CustomName:"\"sin_chambers_west\""}
summon minecraft:area_effect_cloud ~2 ~2 ~ {Duration:99999999,CustomName:"\"sin_chambers_east\""}

#Entrance entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"sin_chambers_entrance\""}
