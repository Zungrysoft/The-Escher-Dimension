#Quad rooms
execute if entity @s[name="jungle_tower_north",tag=quad] run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="jungle_tower_south",tag=quad] run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if entity @s[name="jungle_tower_east",tag=quad] run fill ~ ~ ~2 ~ ~2 ~-2 air
execute if entity @s[name="jungle_tower_west",tag=quad] run fill ~ ~ ~2 ~ ~2 ~-2 air