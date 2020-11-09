#Write the value from the furnace into blocks
execute store result score temp value run data get block ~ ~ ~ CookTimeTotal
execute if score temp value matches 600..800 run fill ~ ~ ~ ~ ~5 ~ stone

scoreboard players add z value 1

execute if score z value matches ..63 positioned ~ ~ ~1 run function tid:dungeon/nature/biome/write_z
