summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["coords"]}
execute store result score global_x value run data get entity @s Pos[0]
execute store result score global_y value run data get entity @s Pos[1]
execute store result score global_z value run data get entity @s Pos[2]
kill @e[type=area_effect_cloud,tag=coords]
