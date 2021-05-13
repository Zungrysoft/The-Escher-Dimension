#Build
fill ~ ~1 ~ ~3 ~7 ~9 air
fill ~-1 ~ ~-1 ~4 ~ ~10 dark_prismarine replace stone
fill ~-1 ~1 ~-1 ~4 ~3 ~10 purpur_block replace stone
fill ~-1 ~4 ~-1 ~4 ~8 ~10 dark_prismarine replace stone
execute if score neon_halls_rooms value matches 30.. run fill ~ ~4 ~ ~3 ~7 ~9 dark_prismarine

#Reserve
fill ~ ~128 ~ ~3 ~136 ~9 blue_wool

#Mark this area on the map
fill ~ 255 ~ ~3 255 ~9 minecraft:green_terracotta replace minecraft:stone

#Doorways
summon minecraft:area_effect_cloud ~1 ~1 ~ {Duration:99999999,CustomName:"\"neon_halls_north\""}
summon minecraft:area_effect_cloud ~1 ~1 ~9 {Duration:99999999,CustomName:"\"neon_halls_south\""}

#Count the room in the total
scoreboard players remove neon_halls_rooms value 1

#We're done here
kill @s
