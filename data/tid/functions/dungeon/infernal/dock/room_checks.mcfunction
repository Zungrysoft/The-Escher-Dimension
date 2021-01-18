scoreboard players add @s tries 1
scoreboard players set @s failed 0

execute if score @s tries matches 25.. run scoreboard players set @s failed 1
execute if score infernal_rooms value matches ..0 run scoreboard players set @s failed 1

#Limit the number of docks
execute store result score temp value if entity @e[type=area_effect_cloud,name="dock_marker",distance=..40]
execute if score temp value matches 3.. if predicate tid:random_33 run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s
