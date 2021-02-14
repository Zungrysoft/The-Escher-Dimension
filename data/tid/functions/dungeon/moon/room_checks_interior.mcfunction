#Ensure there is space ahead to build over
execute if entity @s[name="moon_north"] if block ~ ~-2 ~-3 air run scoreboard players set @s failed 1
execute if entity @s[name="moon_south"] if block ~ ~-2 ~3 air run scoreboard players set @s failed 1
execute if entity @s[name="moon_west"] if block ~-3 ~-2 ~ air run scoreboard players set @s failed 1
execute if entity @s[name="moon_east"] if block ~3 ~-2 ~ air run scoreboard players set @s failed 1

scoreboard players set @s init 1
