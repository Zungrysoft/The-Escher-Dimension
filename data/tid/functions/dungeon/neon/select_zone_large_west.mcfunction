#Build the zone
fill ~ ~ ~ ~31 ~24 ~19 purpur_block replace stone
fill ~1 ~2 ~1 ~30 ~23 ~18 air replace lava
fill ~1 ~2 ~1 ~30 ~23 ~18 air replace purpur_block
fill ~1 ~1 ~1 ~30 ~1 ~18 lava replace purpur_block

#Mark this area as generated
fill ~ ~128 ~ ~31 ~143 ~19 minecraft:green_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~31 255 ~19 minecraft:purpur_block replace minecraft:black_concrete

#Summon a starting piece
summon minecraft:area_effect_cloud ~15 ~7 ~10 {Duration:99999999,CustomName:"\"neon_west\""}

#Summon doorways
summon minecraft:area_effect_cloud ~15 ~1 ~2 {Duration:99999999,CustomName:"\"neon_zone_north\""}
summon minecraft:area_effect_cloud ~15 ~1 ~17 {Duration:99999999,CustomName:"\"neon_zone_south\""}
summon minecraft:area_effect_cloud ~29 ~1 ~9 {Duration:99999999,CustomName:"\"neon_zone_east\""}
summon minecraft:area_effect_cloud ~2 ~1 ~9 {Duration:99999999,CustomName:"\"neon_zone_west\""}

#Count the room in the total
scoreboard players remove neon_rooms value 1