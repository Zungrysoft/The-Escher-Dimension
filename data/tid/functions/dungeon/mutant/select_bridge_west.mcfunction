#Summon the marker entity
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"mutant_room_bridge_west\""}

#Mark this area as generated
fill ~ ~128 ~ ~16 ~132 ~4 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~16 255 ~4 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~ 255 ~2 ~16 255 ~2 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~ ~2 ~2 {Duration:99999999,CustomName:"\"mutant_west\""}
summon minecraft:area_effect_cloud ~16 ~2 ~2 {Duration:99999999,CustomName:"\"mutant_east\""}

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s
