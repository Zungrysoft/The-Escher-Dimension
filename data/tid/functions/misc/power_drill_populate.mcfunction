#Bury some ancient debris underneath the drill
#Summon entities to scatter
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ -1 ~ {Duration:99999999,CustomName:"\"scatter\""}

#Spread them on the x and z axis
spreadplayers ~ ~ 1 5 false @e[type=area_effect_cloud,name="scatter"]

#Spread them on the y axis
execute as @e[type=area_effect_cloud,name="scatter"] at @s run tp @s ~ 34 ~
execute as @e[type=area_effect_cloud,name="scatter"] at @s if predicate tid:random_50 run tp @s ~ ~32 ~
execute as @e[type=area_effect_cloud,name="scatter"] at @s if predicate tid:random_50 run tp @s ~ ~16 ~
execute as @e[type=area_effect_cloud,name="scatter"] at @s if predicate tid:random_50 run tp @s ~ ~8 ~
execute as @e[type=area_effect_cloud,name="scatter"] at @s if predicate tid:random_50 run tp @s ~ ~4 ~
execute as @e[type=area_effect_cloud,name="scatter"] at @s if predicate tid:random_50 run tp @s ~ ~2 ~

#Insert the blocks
execute as @e[type=area_effect_cloud,name="scatter"] at @s if block ~ ~ ~ andesite run setblock ~ ~ ~ ancient_debris
execute as @e[type=area_effect_cloud,name="scatter"] at @s if block ~ ~ ~ nether_bricks run setblock ~ ~ ~ ancient_debris
execute as @e[type=area_effect_cloud,name="scatter"] at @s if block ~ ~ ~ basalt run setblock ~ ~ ~ ancient_debris
execute as @e[type=area_effect_cloud,name="scatter"] at @s if block ~ ~ ~ stone_bricks run setblock ~ ~ ~ ancient_debris
execute as @e[type=area_effect_cloud,name="scatter"] at @s if block ~ ~ ~ coarse_dirt run setblock ~ ~ ~ ancient_debris

#Kill spread entities
#kill @e[type=area_effect_cloud,name="scatter"]