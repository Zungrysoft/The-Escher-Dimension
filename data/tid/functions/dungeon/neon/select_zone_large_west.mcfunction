#Build the zone
fill ~ ~ ~ ~31 ~24 ~19 purpur_block replace stone
fill ~1 ~2 ~1 ~30 ~23 ~18 air replace lava
fill ~1 ~2 ~1 ~30 ~23 ~18 air replace purpur_block
fill ~1 ~1 ~1 ~30 ~1 ~18 lava replace purpur_block

#Mark this area as generated
fill ~ ~128 ~ ~31 ~153 ~19 minecraft:green_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~31 255 ~19 minecraft:purpur_block replace minecraft:black_concrete

#Summon a starting piece
summon minecraft:area_effect_cloud ~15 ~7 ~10 {Duration:99999999,CustomName:"\"neon_west\""}

#Summon doorways
summon minecraft:area_effect_cloud ~15 ~1 ~2 {Duration:99999999,CustomName:"\"neon_zone_north\""}
summon minecraft:area_effect_cloud ~15 ~1 ~17 {Duration:99999999,CustomName:"\"neon_zone_south\""}
summon minecraft:area_effect_cloud ~29 ~1 ~9 {Duration:99999999,CustomName:"\"neon_zone_east\""}
summon minecraft:area_effect_cloud ~2 ~1 ~9 {Duration:99999999,CustomName:"\"neon_zone_west\""}

execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~15 ~11 ~2 {Duration:99999999,CustomName:"\"neon_zone_north\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~15 ~7 ~17 {Duration:99999999,CustomName:"\"neon_zone_south\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~29 ~6 ~9 {Duration:99999999,CustomName:"\"neon_zone_east\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~2 ~12 ~9 {Duration:99999999,CustomName:"\"neon_zone_west\""}

execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~15 ~-8 ~2 {Duration:99999999,CustomName:"\"neon_zone_north\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~15 ~-12 ~17 {Duration:99999999,CustomName:"\"neon_zone_south\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~29 ~-14 ~9 {Duration:99999999,CustomName:"\"neon_zone_east\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~2 ~-10 ~9 {Duration:99999999,CustomName:"\"neon_zone_west\""}

#Count the room in the total
scoreboard players remove neon_rooms value 1