#Determine the fang's directions
scoreboard players set temp2 value 0
execute if predicate tid:random_50 run scoreboard players add temp2 value 1
execute if predicate tid:random_50 run scoreboard players add temp2 value 2
execute if predicate tid:random_50 run scoreboard players add temp2 value 4

#Summon the fangs (only for visuals)
execute if score temp2 value matches 0 run summon minecraft:evoker_fangs ~ ~ ~ {Rotation:[0f,0f]}
execute if score temp2 value matches 1 run summon minecraft:evoker_fangs ~ ~ ~ {Rotation:[22f,0f]}
execute if score temp2 value matches 2 run summon minecraft:evoker_fangs ~ ~ ~ {Rotation:[45f,0f]}
execute if score temp2 value matches 3 run summon minecraft:evoker_fangs ~ ~ ~ {Rotation:[67f,0f]}
execute if score temp2 value matches 4 run summon minecraft:evoker_fangs ~ ~ ~ {Rotation:[90f,0f]}
execute if score temp2 value matches 5 run summon minecraft:evoker_fangs ~ ~ ~ {Rotation:[112f,0f]}
execute if score temp2 value matches 6 run summon minecraft:evoker_fangs ~ ~ ~ {Rotation:[135f,0f]}
execute if score temp2 value matches 7 run summon minecraft:evoker_fangs ~ ~ ~ {Rotation:[157f,0f]}

#Summon the marker entity that will deal the damage
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["fang_damage","single"]}
