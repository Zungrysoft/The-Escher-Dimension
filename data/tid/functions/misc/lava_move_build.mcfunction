setblock ~ ~ ~ lava
tp @s ~ ~ ~
fill ~1 ~ ~1 ~-1 ~-1 ~-1 blackstone replace polished_blackstone_brick_stairs
fill ~1 ~ ~1 ~-1 ~-1 ~-1 blackstone replace polished_blackstone_brick_slab
fill ~1 ~ ~1 ~-1 ~-1 ~-1 blackstone replace blackstone_stairs
fill ~1 ~ ~1 ~-1 ~-1 ~-1 blackstone replace blackstone_slab
scoreboard players set @s succeeded 1
setblock ~ ~-130 ~ blue_wool

execute if predicate tid:random_33 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"lava_mover\""}