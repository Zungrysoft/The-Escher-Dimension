#Retrieve values from the furnaces and sum them together
execute store result score temp value run data get block ~4 50 ~4 CookTimeTotal
scoreboard players operation sum value += temp value
execute store result score temp value run data get block ~4 50 ~-4 CookTimeTotal
scoreboard players operation sum value += temp value
execute store result score temp value run data get block ~-4 50 ~4 CookTimeTotal
scoreboard players operation sum value += temp value
execute store result score temp value run data get block ~-4 50 ~-4 CookTimeTotal
scoreboard players operation sum value += temp value
