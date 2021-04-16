#Summon the fangs (only for visuals)
summon minecraft:evoker_fangs ~3 ~ ~ {Rotation:[0f,0f]}
summon minecraft:evoker_fangs ~2 ~ ~2 {Rotation:[45f,0f]}
summon minecraft:evoker_fangs ~ ~ ~3 {Rotation:[90f,0f]}
summon minecraft:evoker_fangs ~-2 ~ ~2 {Rotation:[135f,0f]}
summon minecraft:evoker_fangs ~-3 ~ ~ {Rotation:[180f,0f]}
summon minecraft:evoker_fangs ~-2 ~ ~-2 {Rotation:[225f,0f]}
summon minecraft:evoker_fangs ~ ~ ~-3 {Rotation:[270f,0f]}
summon minecraft:evoker_fangs ~2 ~ ~-2 {Rotation:[315f,0f]}

#Summon the marker entity that will deal the damage
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["fang_damage"]}
