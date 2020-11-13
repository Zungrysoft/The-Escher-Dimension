#Pick a biome generator
scoreboard players set biome value 0
execute if predicate tid:random_50 run scoreboard players add biome value 1
execute if predicate tid:random_50 run scoreboard players add biome value 2
execute if predicate tid:random_50 run scoreboard players add biome value 4
execute if score biome value matches 0 run function tid:dungeon/nature/biome/biome/desert
execute if score biome value matches 1 run function tid:dungeon/nature/biome/biome/plains
execute if score biome value matches 2 run function tid:dungeon/nature/biome/biome/forest
execute if score biome value matches 3 run function tid:dungeon/nature/biome/biome/flats
execute if score biome value matches 4 run function tid:dungeon/nature/biome/biome/snow_plains
execute if score biome value matches 5 run function tid:dungeon/nature/biome/biome/stone
execute if score biome value matches 6 run function tid:dungeon/nature/biome/biome/flower_meadow
execute if score biome value matches 7 run function tid:dungeon/nature/biome/biome/clay

#Place the pedestal
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
spreadplayers 2032 2032 8 20 under 71 false @e[type=minecraft:area_effect_cloud,tag=scatter]
execute positioned 2032 71 2032 run kill @e[type=minecraft:area_effect_cloud,tag=scatter,sort=furthest,limit=4]
execute at @e[type=minecraft:area_effect_cloud,tag=scatter,limit=1] run function tid:dungeon/nature/select_pedestal
kill @e[type=minecraft:area_effect_cloud,tag=scatter]

#Clone the result over
clone 2006 50 2006 2057 61 2057 ~ ~ ~
clone 2006 62 2006 2057 72 2057 ~ ~12 ~
