scoreboard players add @s tries 1
scoreboard players set @s failed 0

execute if score @s tries matches 50.. run scoreboard players set @s failed 1
execute if score soulsand_rooms value matches ..0 run scoreboard players set @s failed 1

execute if score @s failed matches 1.. run kill @s