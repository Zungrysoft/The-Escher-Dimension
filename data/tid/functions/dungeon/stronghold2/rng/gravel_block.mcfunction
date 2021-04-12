#Only build gravel if there is a block adjacent to it
scoreboard players set temp6 value 0
execute if block ~1 ~ ~ #tid:gravel_adjacent run scoreboard players set temp6 value 1
execute if block ~-1 ~ ~ #tid:gravel_adjacent run scoreboard players set temp6 value 1
execute if block ~ ~ ~1 #tid:gravel_adjacent run scoreboard players set temp6 value 1
execute if block ~ ~ ~-1 #tid:gravel_adjacent run scoreboard players set temp6 value 1
execute if score temp6 value matches 1 if block ~ ~ ~ #tid:jungle_overwrite run setblock ~ ~ ~ gravel
