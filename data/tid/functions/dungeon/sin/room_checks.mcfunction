scoreboard players add @s tries 1
scoreboard players set @s failed 0
function tid:update_coords

execute if score @s tries matches 25.. run scoreboard players set @s failed 1
execute if score sin_rooms value matches ..0 run scoreboard players set @s failed 1
execute unless score @s x matches -100..100 run scoreboard players set @s failed 1
execute unless score @s z matches -100..100 run scoreboard players set @s failed 1

#Determine resident district for determining room checks
execute if entity @s[tag=!decided] store result score @s counter1 run data get entity @e[tag=sin_district,sort=nearest,limit=1] Color 1

#Ensure the area ahead is clear
#North
execute if entity @s[name="sin_north",tag=!decided] unless entity @s[scores={counter1=7}] unless entity @s[scores={counter1=12}] unless block ~ ~ ~-5 air run scoreboard players set @s failed 1
#South
execute if entity @s[name="sin_south",tag=!decided] unless entity @s[scores={counter1=7}] unless entity @s[scores={counter1=12}] unless block ~ ~ ~5 air run scoreboard players set @s failed 1
#West
execute if entity @s[name="sin_west",tag=!decided] unless entity @s[scores={counter1=7}] unless entity @s[scores={counter1=12}] unless block ~-5 ~ ~ air run scoreboard players set @s failed 1
#East
execute if entity @s[name="sin_east",tag=!decided] unless entity @s[scores={counter1=7}] unless entity @s[scores={counter1=12}] unless block ~5 ~ ~ air run scoreboard players set @s failed 1
#Down
execute if entity @s[name="sin_down",tag=!decided] unless entity @s[scores={counter1=7}] unless entity @s[scores={counter1=12}] unless block ~ ~-5 ~ air run scoreboard players set @s failed 1

#Set the decided tag
execute if entity @s[tag=!decided] run tag @s add decided

execute if score @s failed matches 1.. run kill @s
