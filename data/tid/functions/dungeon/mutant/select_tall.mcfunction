#Summon the marker entity
#If it was generated from below, add the "stacked" tag to remember that
execute if entity @s[name="mutant_up"] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"mutant_room_tall\"",Tags:["stacked"]}
execute unless entity @s[name="mutant_up"] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"mutant_room_tall\""}

#Mark this area as generated
fill ~ ~128 ~ ~6 ~143 ~6 minecraft:blue_wool

#Mark this area on the map
fill ~ 255 ~ ~6 255 ~6 minecraft:cyan_concrete replace minecraft:black_concrete
fill ~3 255 ~ ~3 255 ~6 minecraft:light_blue_concrete replace minecraft:cyan_concrete
fill ~ 255 ~3 ~6 255 ~3 minecraft:light_blue_concrete replace minecraft:cyan_concrete

#Summon doorways
summon minecraft:area_effect_cloud ~3 ~3 ~ {Duration:99999999,CustomName:"\"mutant_north\""}
summon minecraft:area_effect_cloud ~3 ~3 ~6 {Duration:99999999,CustomName:"\"mutant_south\""}
summon minecraft:area_effect_cloud ~ ~3 ~3 {Duration:99999999,CustomName:"\"mutant_west\""}
summon minecraft:area_effect_cloud ~6 ~3 ~3 {Duration:99999999,CustomName:"\"mutant_east\""}
summon minecraft:area_effect_cloud ~3 ~15 ~3 {Duration:99999999,CustomName:"\"mutant_up\""}

#Count the room in the total
scoreboard players remove mutant_rooms value 1

#We're done here
kill @s

