#Make sure the air around is solid
scoreboard players set temp value 0
execute unless block ~1 ~1 ~1 air unless block ~-1 ~1 ~1 air unless block ~1 ~-1 ~1 air unless block ~-1 ~-1 ~1 air unless block ~1 ~1 ~-1 air unless block ~-1 ~1 ~-1 air unless block ~1 ~-1 ~-1 air unless block ~-1 ~-1 ~-1 air run scoreboard players set temp value 1
execute unless block ~ ~ ~ end_stone run scoreboard players set temp value 1

#Make sure there isn't dark_prismarine we're getting too close to
execute if score temp value matches 0 unless block ~ ~ ~ dark_prismarine unless block ~1 ~ ~ dark_prismarine unless block ~ ~1 ~ dark_prismarine unless block ~1 ~1 ~ dark_prismarine unless block ~ ~-1 ~ dark_prismarine unless block ~1 ~-1 ~ dark_prismarine unless block ~ ~ ~1 dark_prismarine unless block ~1 ~ ~1 dark_prismarine unless block ~ ~ ~-1 dark_prismarine unless block ~1 ~ ~-1 dark_prismarine run function tid:misc/moon_moss
