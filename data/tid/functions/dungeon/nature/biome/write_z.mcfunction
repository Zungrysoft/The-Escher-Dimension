#Write the value from the furnace into blocks
execute store result score height value run data get block ~ ~ ~ CookTimeTotal
setblock ~ ~ ~ air
execute if score height value matches ..150 positioned ~ ~ ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 151..250 positioned ~ ~1 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 251..350 positioned ~ ~2 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 351..450 positioned ~ ~3 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 451..550 positioned ~ ~4 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 551..650 positioned ~ ~5 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 651..750 positioned ~ ~6 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 751..850 positioned ~ ~7 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 851..950 positioned ~ ~8 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 951..1050 positioned ~ ~9 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1051..1150 positioned ~ ~10 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1151..1250 positioned ~ ~11 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1251..1350 positioned ~ ~12 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1351..1450 positioned ~ ~13 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1451..1550 positioned ~ ~14 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1551..1650 positioned ~ ~15 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1651..1750 positioned ~ ~16 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1751..1850 positioned ~ ~17 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1851..1950 positioned ~ ~18 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 1951..2050 positioned ~ ~19 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 2051..2150 positioned ~ ~20 ~ run function tid:dungeon/nature/biome/tile
execute if score height value matches 2151.. positioned ~ ~21 ~ run function tid:dungeon/nature/biome/tile


scoreboard players add z value 1

execute if score z value matches ..64 positioned ~ ~ ~1 run function tid:dungeon/nature/biome/write_z
