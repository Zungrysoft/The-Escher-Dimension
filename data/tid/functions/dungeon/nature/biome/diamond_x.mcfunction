function tid:dungeon/nature/biome/diamond_z

scoreboard players operation x value += fs value
scoreboard players operation z value = hs value

execute if score x value matches ..64 run function tid:dungeon/nature/biome/diamond_x