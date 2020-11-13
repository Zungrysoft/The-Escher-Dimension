#Write the value from the furnace into blocks
execute store result score temp value run data get block ~ ~ ~ CookTimeTotal
execute if score temp value matches ..150 run fill ~ ~ ~ ~ ~ ~ clay
execute if score temp value matches 151..250 run fill ~ ~ ~ ~ ~1 ~ clay
execute if score temp value matches 251..350 run fill ~ ~ ~ ~ ~2 ~ clay
execute if score temp value matches 351..450 run fill ~ ~ ~ ~ ~3 ~ clay
execute if score temp value matches 451..550 run fill ~ ~ ~ ~ ~4 ~ clay
execute if score temp value matches 551..650 run fill ~ ~ ~ ~ ~5 ~ clay
execute if score temp value matches 651..750 run fill ~ ~ ~ ~ ~6 ~ clay
execute if score temp value matches 751..850 run fill ~ ~ ~ ~ ~7 ~ clay
execute if score temp value matches 851..950 run fill ~ ~ ~ ~ ~8 ~ clay
execute if score temp value matches 951..1050 run fill ~ ~ ~ ~ ~9 ~ clay
execute if score temp value matches 1051..1150 run fill ~ ~ ~ ~ ~10 ~ clay
execute if score temp value matches 1151..1250 run fill ~ ~ ~ ~ ~11 ~ clay
execute if score temp value matches 1251..1350 run fill ~ ~ ~ ~ ~12 ~ clay
execute if score temp value matches 1351..1450 run fill ~ ~ ~ ~ ~13 ~ clay
execute if score temp value matches 1451..1550 run fill ~ ~ ~ ~ ~14 ~ clay
execute if score temp value matches 1551..1650 run fill ~ ~ ~ ~ ~15 ~ clay
execute if score temp value matches 1651..1750 run fill ~ ~ ~ ~ ~16 ~ clay
execute if score temp value matches 1751..1850 run fill ~ ~ ~ ~ ~17 ~ clay
execute if score temp value matches 1851..1950 run fill ~ ~ ~ ~ ~18 ~ clay
execute if score temp value matches 1951..2050 run fill ~ ~ ~ ~ ~19 ~ clay
execute if score temp value matches 2051..2150 run fill ~ ~ ~ ~ ~20 ~ clay
execute if score temp value matches 2151.. run fill ~ ~ ~ ~ ~21 ~ clay


scoreboard players add z value 1

execute if score z value matches ..64 positioned ~ ~ ~1 run function tid:dungeon/nature/biome/write_z
