scoreboard players add @s tries 1
scoreboard players set @s failed 0

execute if score @s tries matches 80.. run scoreboard players set @s failed 1
execute if score moon_rooms value matches ..0 run scoreboard players set @s failed 1
execute if score @s x matches ..0 run scoreboard players set @s failed 1
execute if score @s z matches ..-128 run scoreboard players set @s failed 1
execute if score @s x matches 64.. run scoreboard players set @s failed 1
execute if score @s z matches 64.. run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s