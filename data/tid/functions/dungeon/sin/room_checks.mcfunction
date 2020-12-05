scoreboard players add @s tries 1
scoreboard players set @s failed 0
function tid:update_coords

execute if score @s tries matches 25.. run scoreboard players set @s failed 1
execute if score sin_rooms value matches ..0 run scoreboard players set @s failed 1
execute unless score @s x matches -100..100 run scoreboard players set @s failed 1
execute unless score @s z matches -100..100 run scoreboard players set @s failed 1

#Ensure the area ahead is clear
execute if entity @s[name="sin_north"] unless block ~ ~ ~-5 air run scoreboard players set @s failed 1
execute if entity @s[name="sin_south"] unless block ~ ~ ~5 air run scoreboard players set @s failed 1
execute if entity @s[name="sin_west"] unless block ~-5 ~ ~ air run scoreboard players set @s failed 1
execute if entity @s[name="sin_east"] unless block ~5 ~ ~ air run scoreboard players set @s failed 1
execute if entity @s[name="sin_down"] unless block ~ ~-5 ~ air run scoreboard players set @s failed 1

#Determine resident district for determining room checks
execute if entity @s[tag=!decided] store result score @s counter1 run data get entity @e[tag=sin_district,sort=nearest,limit=1] Color 1
execute if entity @s[tag=!decided] run tag @s add decided

execute if score @s failed matches 1.. run kill @s
