#Make sure there is enough space to generate
scoreboard players set temp2 value 0
execute positioned ~-3 ~3 ~-3 if blocks ~ ~-128 ~ ~6 ~-124 ~6 1001 129 1001 all run scoreboard players set temp2 value 1

#If there is enough space, generate it. If not, kill self because this room is a dud
execute if score temp2 value matches 1 run function tid:dungeon/jungle/tower_stairwell_run
execute unless score temp2 value matches 1 run kill @s

#Guarantee a chest if this is the final room in the tower
execute unless score temp2 value matches 1 unless entity @e[type=area_effect_cloud,name="jungle_tower_room",distance=1..30] run setblock ~2 ~ ~2 chest{LootTable: "tid:chests/jungle"}