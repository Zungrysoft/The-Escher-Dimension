#Build the zone
fill ~ ~ ~ ~31 ~24 ~31 purpur_block replace stone
fill ~1 ~2 ~1 ~30 ~23 ~30 air replace lava
fill ~1 ~2 ~1 ~30 ~23 ~30 air replace purpur_block
fill ~1 ~1 ~1 ~30 ~1 ~30 lava replace purpur_block

#Mark this area as generated
fill ~ ~128 ~ ~31 ~153 ~31 minecraft:green_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~31 255 ~31 minecraft:purpur_block replace minecraft:black_concrete

#Summon a starting piece
summon minecraft:area_effect_cloud ~15 ~7 ~15 {Duration:99999999,CustomName:"\"neon_west\""}

#Summon doorways
summon minecraft:area_effect_cloud ~2 ~1 ~15 {Duration:99999999,CustomName:"\"neon_zone_west\""}
summon minecraft:area_effect_cloud ~29 ~1 ~15 {Duration:99999999,CustomName:"\"neon_zone_east\""}
summon minecraft:area_effect_cloud ~15 ~1 ~29 {Duration:99999999,CustomName:"\"neon_zone_south\""}
summon minecraft:area_effect_cloud ~15 ~1 ~2 {Duration:99999999,CustomName:"\"neon_zone_north\""}

execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~2 ~8 ~15 {Duration:99999999,CustomName:"\"neon_zone_west\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~29 ~5 ~15 {Duration:99999999,CustomName:"\"neon_zone_east\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~15 ~7 ~29 {Duration:99999999,CustomName:"\"neon_zone_south\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~15 ~10 ~2 {Duration:99999999,CustomName:"\"neon_zone_north\""}

execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~2 ~13 ~15 {Duration:99999999,CustomName:"\"neon_zone_west\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~29 ~9 ~15 {Duration:99999999,CustomName:"\"neon_zone_east\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~15 ~12 ~29 {Duration:99999999,CustomName:"\"neon_zone_south\""}
execute if predicate tid:random_30 run summon minecraft:area_effect_cloud ~15 ~5 ~2 {Duration:99999999,CustomName:"\"neon_zone_north\""}

#Count the room in the total
scoreboard players remove neon_rooms value 1
