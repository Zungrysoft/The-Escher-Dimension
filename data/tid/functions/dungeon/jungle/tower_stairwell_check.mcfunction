#Make sure all rooms in this tower are old enough, meaning this layer is probably done generating
scoreboard players set temp value 1
execute as @e[type=area_effect_cloud,name="jungle_tower_room",distance=0..30] if score @s counter1 matches ..10 run scoreboard players set temp value 0

#If the check passes, do some more checks on that room
execute if score temp value matches 1 as @e[type=area_effect_cloud,name="jungle_tower_room",distance=0..30,limit=1,sort=furthest] at @s run function tid:dungeon/jungle/tower_stairwell_check2