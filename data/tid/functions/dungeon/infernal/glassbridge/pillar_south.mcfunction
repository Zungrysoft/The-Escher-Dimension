#Build
fill ~ ~ ~ ~6 ~ ~2 nether_bricks
setblock ~3 ~ ~2 polished_andesite
fill ~ ~128 ~ ~6 ~128 ~2 blue_wool

#Recurse
execute if block ~ ~-1 ~ #tid:air_or_liquid positioned ~ ~-1 ~ run function tid:dungeon/infernal/glassbridge/pillar_south
