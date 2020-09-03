scoreboard players set @s counter1 0

#Block must not have too much lava adjacent to it, in order to make a cool pattern
execute if block ~1 ~ ~ lava run scoreboard players add @s counter1 1
execute if block ~1 ~ ~1 lava run scoreboard players add @s counter1 1
execute if block ~1 ~ ~-1 lava run scoreboard players add @s counter1 1
execute if block ~-1 ~ ~ lava run scoreboard players add @s counter1 1
execute if block ~-1 ~ ~-1 lava run scoreboard players add @s counter1 1
execute if block ~-1 ~ ~1 lava run scoreboard players add @s counter1 1
execute if block ~ ~ ~1 lava run scoreboard players add @s counter1 1
execute if block ~ ~ ~-1 lava run scoreboard players add @s counter1 1

#Block must not have air next to it or below it in order to prevent lava from flowing
execute if block ~1 ~ ~ air run scoreboard players add @s counter1 9
execute if block ~-1 ~ ~ air run scoreboard players add @s counter1 9
execute if block ~ ~ ~1 air run scoreboard players add @s counter1 9
execute if block ~ ~ ~-1 air run scoreboard players add @s counter1 9
execute unless block ~ ~1 ~ air run scoreboard players add @s counter1 9

#Block cannot move back into more lava
execute if block ~ ~ ~ lava run scoreboard players add @s counter1 9

#Block cannot move underneath walls
execute if block ~ ~-1 ~ air run scoreboard players add @s counter1 9