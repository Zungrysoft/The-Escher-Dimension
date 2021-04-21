scoreboard players set @s failed 0
function tid:update_coords

execute unless score @s x matches -50..50 run scoreboard players set @s failed 1
execute unless score @s z matches -50..50 run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s
