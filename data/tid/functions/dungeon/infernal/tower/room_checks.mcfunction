scoreboard players add @s tries 1
scoreboard players set @s failed 0

execute if score @s tries matches 25.. run scoreboard players set @s failed 1
execute if score infernal_rooms value matches ..0 run scoreboard players set @s failed 1

#Ensure there is space ahead to build over
execute if entity @s[name="infernal_tower_short_north"] unless block ~ ~-1 ~-3 #tid:infernal_blocks run scoreboard players set @s failed 1
execute if entity @s[name="infernal_tower_short_south"] unless block ~ ~-1 ~3 #tid:infernal_blocks run scoreboard players set @s failed 1
execute if entity @s[name="infernal_tower_short_west"] unless block ~-3 ~-1 ~ #tid:infernal_blocks run scoreboard players set @s failed 1
execute if entity @s[name="infernal_tower_short_east"] unless block ~3 ~-1 ~ #tid:infernal_blocks run scoreboard players set @s failed 1
execute if entity @s[name="infernal_tower_tall_north"] unless block ~ ~-1 ~-3 #tid:infernal_blocks run scoreboard players set @s failed 1
execute if entity @s[name="infernal_tower_tall_south"] unless block ~ ~-1 ~3 #tid:infernal_blocks run scoreboard players set @s failed 1
execute if entity @s[name="infernal_tower_tall_west"] unless block ~-3 ~-1 ~ #tid:infernal_blocks run scoreboard players set @s failed 1
execute if entity @s[name="infernal_tower_tall_east"] unless block ~3 ~-1 ~ #tid:infernal_blocks run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s