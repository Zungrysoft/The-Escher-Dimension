#Summon the marker entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"mutant_room_bridge_north\""}

#Mark this area as generated
fill ~ ~128 ~ ~4 ~132 ~16 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~16 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~2 255 ~ ~2 255 ~16 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~2 ~2 ~ {Duration:99999999,CustomName:"\"mutant_north\""}
summon minecraft:area_effect_cloud ~2 ~2 ~16 {Duration:99999999,CustomName:"\"mutant_south\""}

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s
