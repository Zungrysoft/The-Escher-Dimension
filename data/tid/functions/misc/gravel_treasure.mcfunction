#Find the armor stands, then execute the function
execute as @e[type=armor_stand,name="gravel_treasure"] at @s run function tid:misc/gravel_treasure_execute
kill @e[type=armor_stand,name="gravel_treasure"]