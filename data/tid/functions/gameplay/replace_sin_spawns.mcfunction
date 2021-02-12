function tid:update_coords

#In the city
execute if block ~ ~-1 ~ #tid:polished_blackstone_blocks if score @s y matches 165.. run function tid:gameplay/replace_sin_spawns_district

#Outskirts
execute if block ~ ~-1 ~ basalt if score @s y matches 165.. run function tid:gameplay/replace_sin_spawns_outskirts

#Fire Chambers
execute if score @s y matches 128..164 run function tid:gameplay/replace_sin_spawns_chambers

#Kill the source mob
tp @s 1 -100 1
