scoreboard players set layer_3_handler_phase value 40

#If there is still a significant number of rooms left to generate, generate a straggler and go back to phase 20
execute if score station_rooms value matches 15.. at @e[type=area_effect_cloud,name="station_straggler_start",sort=random,limit=3] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"station_north\""}
execute if score station_rooms value matches 15.. run scoreboard players set layer_3_handler_phase value 20

