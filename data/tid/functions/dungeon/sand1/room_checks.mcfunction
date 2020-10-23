scoreboard players add @s tries 1
scoreboard players set @s failed 0
function tid:update_coords

execute if score @s tries matches 30.. run scoreboard players set @s failed 1
execute if score sand1_rooms value matches ..0 if score sand1_x_spot_build value matches 1 run scoreboard players set @s failed 1
execute if score @s x matches 115.. run scoreboard players set @s failed 1
execute if score @s x matches ..-130 run scoreboard players set @s failed 1
execute if score @s z matches 0.. run scoreboard players set @s failed 1
execute if score @s z matches ..-130 run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s