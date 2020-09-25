#Build the zone
fill ~ ~ ~ ~31 ~14 ~19 purpur_block replace stone
fill ~1 ~2 ~1 ~30 ~13 ~18 air replace lava
fill ~1 ~2 ~1 ~30 ~13 ~18 air replace purpur_block
fill ~1 ~1 ~1 ~30 ~1 ~18 lava replace purpur_block

#Mark this area as generated
fill ~ ~128 ~ ~31 ~133 ~19 minecraft:green_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~31 255 ~19 minecraft:purpur_block replace minecraft:black_concrete

#Summon the marker
summon minecraft:area_effect_cloud ~15 ~7 ~10 {Duration:99999999,CustomName:"\"neon_zone\""}

#Count the room in the total
scoreboard players remove neon_rooms value 1