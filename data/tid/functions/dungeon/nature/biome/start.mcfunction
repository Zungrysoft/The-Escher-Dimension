#Pick a biome generator
scoreboard players set biome value 0
execute if predicate tid:random_50 run scoreboard players add biome value 1
execute if predicate tid:random_50 run scoreboard players add biome value 2
execute if score biome value matches 0 run function tid:dungeon/nature/biome/biome/desert
execute if score biome value matches 1 run function tid:dungeon/nature/biome/biome/plains
execute if score biome value matches 2..3 run function tid:dungeon/nature/biome/biome/flats

#Place the pedestal
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["scatter"]}
spreadplayers 2032 2032 8 20 under 71 false @e[type=minecraft:area_effect_cloud,tag=scatter]
execute positioned 2032 71 2032 run kill @e[type=minecraft:area_effect_cloud,tag=scatter,sort=furthest,limit=4]
execute at @e[type=minecraft:area_effect_cloud,tag=scatter,limit=1] run function tid:dungeon/nature/select_pedestal
kill @e[type=minecraft:area_effect_cloud,tag=scatter]

#Clone the result over
clone 2006 50 2006 2057 61 2057 ~ ~ ~
clone 2006 62 2006 2057 72 2057 ~ ~12 ~
