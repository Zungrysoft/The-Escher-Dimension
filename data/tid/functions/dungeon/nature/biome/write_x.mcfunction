function tid:dungeon/nature/biome/write_z

scoreboard players add x value 1
scoreboard players set z value 6

execute if score x value matches ..57 positioned ~1 ~ ~ run function tid:dungeon/nature/biome/write_x
