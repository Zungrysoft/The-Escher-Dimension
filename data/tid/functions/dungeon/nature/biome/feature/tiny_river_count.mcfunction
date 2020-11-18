scoreboard players set count value 0

#Block must not have too much water adjacent to it, in order to make a cool pattern
execute if block ~1 ~ ~ water run scoreboard players add count value 2
execute if block ~1 ~ ~1 water run scoreboard players add count value 1
execute if block ~1 ~ ~-1 water run scoreboard players add count value 1
execute if block ~-1 ~ ~ water run scoreboard players add count value 2
execute if block ~-1 ~ ~-1 water run scoreboard players add count value 1
execute if block ~-1 ~ ~1 water run scoreboard players add count value 1
execute if block ~ ~ ~1 water run scoreboard players add count value 2
execute if block ~ ~ ~-1 water run scoreboard players add count value 2

#Adjacent blocks must be grass or podzol
execute unless block ~ ~ ~ grass_block unless block ~ ~ ~ podzol run scoreboard players add count value 9
execute unless block ~1 ~ ~ grass_block unless block ~1 ~ ~ podzol unless block ~1 ~ ~ water unless block ~1 ~ ~ dirt run scoreboard players add count value 9
execute unless block ~-1 ~ ~ grass_block unless block ~-1 ~ ~ podzol unless block ~-1 ~ ~ water unless block ~-1 ~ ~ dirt run scoreboard players add count value 9
execute unless block ~ ~ ~1 grass_block unless block ~ ~ ~1 podzol unless block ~ ~ ~1 water unless block ~ ~ ~1 dirt run scoreboard players add count value 9
execute unless block ~ ~ ~-1 grass_block unless block ~ ~ ~-1 podzol unless block ~ ~ ~-1 water unless block ~ ~ ~-1 dirt run scoreboard players add count value 9

#Be less picky if the current block is podzol
execute if block ~ ~ ~ podzol run scoreboard players remove count value 3
