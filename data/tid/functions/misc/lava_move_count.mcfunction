scoreboard players set @s counter1 0

execute if block ~1 ~ ~ lava run scoreboard players add @s counter1 1
execute if block ~1 ~ ~1 lava run scoreboard players add @s counter1 1
execute if block ~1 ~ ~-1 lava run scoreboard players add @s counter1 1
execute if block ~-1 ~ ~ lava run scoreboard players add @s counter1 1
execute if block ~-1 ~ ~-1 lava run scoreboard players add @s counter1 1
execute if block ~-1 ~ ~1 lava run scoreboard players add @s counter1 1
execute if block ~ ~ ~1 lava run scoreboard players add @s counter1 1
execute if block ~ ~ ~-1 lava run scoreboard players add @s counter1 1

execute if block ~1 ~ ~ air run scoreboard players add @s counter1 9
execute if block ~-1 ~ ~ air run scoreboard players add @s counter1 9
execute if block ~ ~ ~1 air run scoreboard players add @s counter1 9
execute if block ~ ~ ~-1 air run scoreboard players add @s counter1 9

execute unless block ~ ~1 ~ air run scoreboard players add @s counter1 9

execute if block ~ ~ ~ lava run scoreboard players add @s counter1 9