#Build
fill ~ ~1 ~ ~9 ~7 ~3 air
fill ~-1 ~ ~-1 ~10 ~ ~4 dark_prismarine replace stone
fill ~-1 ~1 ~-1 ~10 ~3 ~4 purpur_block replace stone
fill ~-1 ~4 ~-1 ~10 ~8 ~4 dark_prismarine replace stone
execute if score neon_halls_rooms value matches 30.. run fill ~ ~4 ~ ~9 ~7 ~3 dark_prismarine

#Reserve
fill ~ ~128 ~ ~9 ~136 ~3 blue_wool

#Mark this area on the map
fill ~ 255 ~ ~9 255 ~3 minecraft:green_terracotta replace minecraft:stone

#Doorways
summon minecraft:area_effect_cloud ~ ~1 ~1 {Duration:99999999,CustomName:"\"neon_halls_west\""}
summon minecraft:area_effect_cloud ~9 ~1 ~1 {Duration:99999999,CustomName:"\"neon_halls_east\""}

#Count the room in the total
scoreboard players remove neon_halls_rooms value 1

#We're done here
kill @s