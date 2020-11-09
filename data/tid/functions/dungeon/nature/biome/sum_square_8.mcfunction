#Retrieve values from the furnaces and sum them together
execute store result score temp value run data get block ~8 50 ~ CookTimeTotal
scoreboard players operation sum value += temp value
execute store result score temp value run data get block ~-8 50 ~ CookTimeTotal
scoreboard players operation sum value += temp value
execute store result score temp value run data get block ~ 50 ~8 CookTimeTotal
scoreboard players operation sum value += temp value
execute store result score temp value run data get block ~ 50 ~-8 CookTimeTotal
scoreboard players operation sum value += temp value
