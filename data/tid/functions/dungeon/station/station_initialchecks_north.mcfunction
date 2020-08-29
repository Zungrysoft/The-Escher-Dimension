#This initialchecks function scans the area to ensure the cavern will have enough space to grow outward
scoreboard players set @s counter1 0

#Also check to ensure there aren't any other stations currently generating.
execute unless entity @e[tag=station_handler] run scoreboard players add @s counter1 1

#Checks 12 sections out in front
execute if blocks ~-15 ~117 ~-32 ~16 ~143 ~-1 1 1 1 all run scoreboard players add @s counter1 1
execute if blocks ~-47 ~117 ~-32 ~-16 ~143 ~-1 1 1 1 all run scoreboard players add @s counter1 1
execute if blocks ~17 ~117 ~-32 ~48 ~143 ~-1 1 1 1 all run scoreboard players add @s counter1 1

execute if blocks ~-15 ~117 ~-64 ~16 ~143 ~-33 1 1 1 all run scoreboard players add @s counter1 1
execute if blocks ~-47 ~117 ~-64 ~-16 ~143 ~-33 1 1 1 all run scoreboard players add @s counter1 1
execute if blocks ~17 ~117 ~-64 ~48 ~143 ~-33 1 1 1 all run scoreboard players add @s counter1 1

execute if blocks ~-15 ~117 ~-96 ~16 ~143 ~-65 1 1 1 all run scoreboard players add @s counter1 1
execute if blocks ~-47 ~117 ~-96 ~-16 ~143 ~-65 1 1 1 all run scoreboard players add @s counter1 1
execute if blocks ~17 ~117 ~-96 ~48 ~143 ~-65 1 1 1 all run scoreboard players add @s counter1 1

#If all checks passed, move onto the next step
execute if score @s counter1 matches 10.. run function tid:dungeon/station_startgenerate_north