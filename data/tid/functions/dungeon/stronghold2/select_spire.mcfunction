#Mark this area as generated
fill ~ ~128 ~ ~14 ~154 ~14 minecraft:blue_wool replace minecraft:orange_wool
fill ~ ~155 ~ ~14 ~181 ~14 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~14 255 ~14 minecraft:stone replace minecraft:black_concrete
fill ~ 255 ~ ~14 255 ~14 minecraft:stone replace minecraft:bricks
fill ~7 255 ~ ~7 255 ~14 minecraft:light_gray_concrete replace minecraft:stone
fill ~ 255 ~7 ~14 255 ~7 minecraft:light_gray_concrete replace minecraft:stone

# Summon the marker entity that we will reference later when building it
summon minecraft:area_effect_cloud ~7 ~1 ~7 {Duration:99999999,CustomName:"\"stronghold2_spire\""}

# Summon doorways
# summon minecraft:area_effect_cloud ~7 ~4 ~14 {Duration:99999999,CustomName:"\"stronghold2_south\""}
summon minecraft:area_effect_cloud ~14 ~4 ~7 {Duration:99999999,CustomName:"\"stronghold2_east\""}
summon minecraft:area_effect_cloud ~7 ~4 ~ {Duration:99999999,CustomName:"\"stronghold2_north\""}
summon minecraft:area_effect_cloud ~ ~4 ~7 {Duration:99999999,CustomName:"\"stronghold2_west\""}

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1
scoreboard players add stronghold2_spires value 1

#We're done here
kill @s
