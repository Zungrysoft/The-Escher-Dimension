function tid:dungeon/nature/biome/square_z

scoreboard players operation x value += fs value
scoreboard players set z value 0

execute if score x value matches ..64 run function tid:dungeon/nature/biome/square2_x
