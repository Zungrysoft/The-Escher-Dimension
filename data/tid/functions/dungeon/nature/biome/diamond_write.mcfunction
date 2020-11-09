#Average the values of the corners
#Values are hardcoded because this runs faster than doing a bunch of scoreboard shuffling and entity wrangling
scoreboard players set sum value 0
execute if score hs value matches 32 run function tid:dungeon/nature/biome/sum_diamond_32
execute if score hs value matches 16 run function tid:dungeon/nature/biome/sum_diamond_16
execute if score hs value matches 8 run function tid:dungeon/nature/biome/sum_diamond_8
execute if score hs value matches 4 run function tid:dungeon/nature/biome/sum_diamond_4
execute if score hs value matches 2 run function tid:dungeon/nature/biome/sum_diamond_2
execute if score hs value matches 1 run function tid:dungeon/nature/biome/sum_diamond_1

#Write resulting value into furnace
execute store result block ~ 50 ~ CookTimeTotal short 1 run scoreboard players get sum value
