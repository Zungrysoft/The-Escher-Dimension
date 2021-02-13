#Try generating to the west
execute positioned ~-8 ~ ~-2 if blocks ~ ~ ~ ~6 ~3 ~4 1001 1 1033 all run function tid:dungeon/sin/select_secret_west

#If that failed, try generating to the east
execute unless block ~-2 ~2 ~ chiseled_polished_blackstone positioned ~2 ~ ~-2 if blocks ~ ~ ~ ~6 ~3 ~4 1001 1 1033 all run function tid:dungeon/sin/select_secret_east
