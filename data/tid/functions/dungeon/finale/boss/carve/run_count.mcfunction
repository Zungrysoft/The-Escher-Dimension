#Recursion
scoreboard players remove temp value 1
execute if score temp value matches 0.. run function tid:dungeon/finale/boss/carve/run_count

#Summon entity to hold position
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["new"]}

#Store current coords in variables
execute store result score pos_x value run data get entity @e[type=area_effect_cloud,tag=new,limit=1] Pos[0]
execute store result score pos_y value run data get entity @e[type=area_effect_cloud,tag=new,limit=1] Pos[1]
execute store result score pos_z value run data get entity @e[type=area_effect_cloud,tag=new,limit=1] Pos[2]

#Randomize offsets
scoreboard players set offset_x value 0
execute if predicate tid:random_50 run scoreboard players add offset_x value 1
execute if predicate tid:random_50 run scoreboard players add offset_x value 2
execute if predicate tid:random_50 run scoreboard players add offset_x value 4
execute if predicate tid:random_50 run scoreboard players add offset_x value 8
execute if predicate tid:random_50 run scoreboard players add offset_x value 16
execute if predicate tid:random_50 run scoreboard players add offset_x value 32
execute if predicate tid:random_50 run scoreboard players add offset_x value 64

scoreboard players set offset_y value 0
execute if predicate tid:random_50 run scoreboard players add offset_y value 1
execute if predicate tid:random_50 run scoreboard players add offset_y value 2
execute if predicate tid:random_50 run scoreboard players add offset_y value 4
execute if predicate tid:random_50 run scoreboard players add offset_y value 8
execute if predicate tid:random_50 run scoreboard players add offset_y value 16
execute if predicate tid:random_50 run scoreboard players add offset_y value 32
execute if predicate tid:random_50 run scoreboard players add offset_y value 64

scoreboard players set offset_z value 0
execute if predicate tid:random_50 run scoreboard players add offset_z value 1
execute if predicate tid:random_50 run scoreboard players add offset_z value 2
execute if predicate tid:random_50 run scoreboard players add offset_z value 4
execute if predicate tid:random_50 run scoreboard players add offset_z value 8
execute if predicate tid:random_50 run scoreboard players add offset_z value 16
execute if predicate tid:random_50 run scoreboard players add offset_z value 32
execute if predicate tid:random_50 run scoreboard players add offset_z value 64

#Constrain offsets
scoreboard players operation offset_x value %= xmax value
scoreboard players operation offset_y value %= ymax value
scoreboard players operation offset_z value %= zmax value

#Add offsets to coords
scoreboard players operation pos_x value += offset_x value
scoreboard players operation pos_y value += offset_y value
scoreboard players operation pos_z value += offset_z value

#Write position into entity
execute store result entity @e[type=area_effect_cloud,tag=new,limit=1] Pos[0] double 1 run scoreboard players get pos_x value
execute store result entity @e[type=area_effect_cloud,tag=new,limit=1] Pos[1] double 1 run scoreboard players get pos_y value
execute store result entity @e[type=area_effect_cloud,tag=new,limit=1] Pos[2] double 1 run scoreboard players get pos_z value

#Execute at the entity 
execute at @e[type=area_effect_cloud,tag=new,limit=1] run function tid:dungeon/finale/boss/carve/medium

#Kill entity
kill @e[type=area_effect_cloud,tag=new,limit=1]
