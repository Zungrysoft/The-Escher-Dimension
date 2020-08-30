#Check if all cave handlers are on phase 2
scoreboard players set failed value 0
execute as @e[name="station_cave_segment",type=area_effect_cloud] unless score @s phase matches 2 run scoreboard players set failed value 1

#If they are all on phase 2, advance their phases and move on here to phase 13
execute unless score failed value matches 1 run scoreboard players set @e[name="station_cave_segment",type=area_effect_cloud] phase 3
execute unless score failed value matches 1 run scoreboard players set layer_4_handler_phase value 13

