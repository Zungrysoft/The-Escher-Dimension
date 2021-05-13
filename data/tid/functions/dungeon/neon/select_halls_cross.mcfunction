#Build
fill ~ ~1 ~ ~7 ~7 ~7 air
fill ~-1 ~ ~-1 ~8 ~ ~8 dark_prismarine replace stone
fill ~-1 ~1 ~-1 ~8 ~3 ~8 purpur_block replace stone
fill ~-1 ~4 ~-1 ~8 ~8 ~8 dark_prismarine replace stone
execute if score neon_halls_rooms value matches 30.. run fill ~ ~4 ~ ~7 ~7 ~7 dark_prismarine

#Reserve
fill ~ ~128 ~ ~7 ~136 ~7 blue_wool

#Mark this area on the map
fill ~ 255 ~ ~7 255 ~7 minecraft:green_terracotta replace minecraft:stone

#Doorways
summon minecraft:area_effect_cloud ~3 ~1 ~ {Duration:99999999,CustomName:"\"neon_halls_north\""}
summon minecraft:area_effect_cloud ~3 ~1 ~7 {Duration:99999999,CustomName:"\"neon_halls_south\""}
summon minecraft:area_effect_cloud ~ ~1 ~3 {Duration:99999999,CustomName:"\"neon_halls_west\""}
summon minecraft:area_effect_cloud ~7 ~1 ~3 {Duration:99999999,CustomName:"\"neon_halls_east\""}

#Junk markers
summon minecraft:area_effect_cloud ~0 ~1 ~0 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~0 ~1 ~4 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~0 ~1 ~6 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~1 ~1 ~2 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~1 ~1 ~3 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~1 ~1 ~4 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~2 ~1 ~2 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~2 ~1 ~7 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~2 ~1 ~3 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~3 ~1 ~4 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~3 ~1 ~1 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~3 ~1 ~6 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~4 ~1 ~6 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~4 ~1 ~3 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~4 ~1 ~0 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~5 ~1 ~3 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~5 ~1 ~7 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~5 ~1 ~2 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~6 ~1 ~4 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~6 ~1 ~5 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~6 ~1 ~1 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~7 ~1 ~0 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~7 ~1 ~4 {Duration:99999999,CustomName:"\"neon_junk_marker\""}
summon minecraft:area_effect_cloud ~7 ~1 ~5 {Duration:99999999,CustomName:"\"neon_junk_marker\""}


#Count the room in the total
scoreboard players remove neon_halls_rooms value 1

#We're done here
kill @s
