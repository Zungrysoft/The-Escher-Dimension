#Start carving
function tid:dungeon/moon/carve/run
function tid:dungeon/moon/pillar/run

#Recursion
execute positioned ~ ~8 ~ unless block ~ ~140 ~ clay run function tid:dungeon/moon/carve

#Add lower doorway
summon minecraft:area_effect_cloud ~ 13 ~ {Duration:99999999,CustomName:"\"moon_north\""}
summon minecraft:area_effect_cloud ~ 13 ~ {Duration:99999999,CustomName:"\"moon_north\""}
summon minecraft:area_effect_cloud ~ 13 ~ {Duration:99999999,CustomName:"\"moon_north\""}
summon minecraft:area_effect_cloud ~ 36 ~ {Duration:99999999,CustomName:"\"moon_north\""}
summon minecraft:area_effect_cloud ~ 77 ~ {Duration:99999999,CustomName:"\"moon_north\""}
summon minecraft:area_effect_cloud ~ 101 ~ {Duration:99999999,CustomName:"\"moon_north\""}
