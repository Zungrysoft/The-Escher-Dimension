#Summon the fangs (only for visuals)
summon minecraft:evoker_fangs ~2.5 ~ ~ {Rotation:[0f,0f]}
summon minecraft:evoker_fangs ~2.5 ~ ~2.5 {Rotation:[0f,0f]}
summon minecraft:evoker_fangs ~ ~ ~2.5 {Rotation:[0f,0f]}
summon minecraft:evoker_fangs ~-2.5 ~ ~2.5 {Rotation:[0f,0f]}
summon minecraft:evoker_fangs ~-2.5 ~ ~ {Rotation:[0f,0f]}
summon minecraft:evoker_fangs ~-2.5 ~ ~-2.5 {Rotation:[0f,0f]}
summon minecraft:evoker_fangs ~ ~ ~-2.5 {Rotation:[0f,0f]}
summon minecraft:evoker_fangs ~2.5 ~ ~-2.5 {Rotation:[0f,0f]}

#Summon the marker entity that will deal the damage
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["fang_damage"]}
