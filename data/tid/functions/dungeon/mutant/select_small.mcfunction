#Summon the marker entity
#If it was generated from below, add the "stacked" tag to remember that
execute if entity @s[name="mutant_up"] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"mutant_room_small\"",Tags:["stacked"]}
execute unless entity @s[name="mutant_up"] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"mutant_room_small\""}

#Mark this area as generated
fill ~ ~128 ~ ~10 ~135 ~10 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~10 255 ~10 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~5 255 ~ ~5 255 ~10 minecraft:light_blue_concrete replace minecraft:cyan_concrete
fill ~ 255 ~5 ~10 255 ~5 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~5 ~3 ~ {Duration:99999999,CustomName:"\"mutant_north\""}
summon minecraft:area_effect_cloud ~5 ~3 ~10 {Duration:99999999,CustomName:"\"mutant_south\""}
summon minecraft:area_effect_cloud ~ ~3 ~5 {Duration:99999999,CustomName:"\"mutant_west\""}
summon minecraft:area_effect_cloud ~10 ~3 ~5 {Duration:99999999,CustomName:"\"mutant_east\""}

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s

