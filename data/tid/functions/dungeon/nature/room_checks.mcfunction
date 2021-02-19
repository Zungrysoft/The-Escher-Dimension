scoreboard players add @s tries 1
scoreboard players set @s failed 0
function tid:update_coords

execute if score @s tries matches 70.. run scoreboard players set @s failed 1
execute if score nature_rooms value matches ..0 run scoreboard players set @s failed 1

execute unless score @s x matches -128..128 run scoreboard players set @s failed 1
execute unless score @s z matches -128..128 run scoreboard players set @s failed 1
execute if score @s x matches 0.. unless score @s y matches 75.. run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s