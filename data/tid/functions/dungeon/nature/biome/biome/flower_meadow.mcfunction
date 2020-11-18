#Generate terrain
scoreboard players set roughness value 11000
scoreboard players set falloff value 30
function tid:dungeon/nature/biome/terrain

#Add in the tiny rivers
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
summon minecraft:area_effect_cloud 2032 57 2032 {Duration:99999999,Tags:["scatter"]}
spreadplayers 2032 2032 8 20 under 69 false @e[type=minecraft:area_effect_cloud,tag=scatter]
execute at @e[type=minecraft:area_effect_cloud,tag=scatter] run function tid:dungeon/nature/biome/feature/tiny_river
kill @e[type=minecraft:area_effect_cloud,tag=scatter]
