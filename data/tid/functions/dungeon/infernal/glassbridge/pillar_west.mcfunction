#Build
fill ~ ~ ~ ~2 ~ ~6 nether_bricks
setblock ~ ~ ~3 polished_andesite
fill ~ ~128 ~ ~2 ~128 ~6 blue_wool

#Recurse
execute if block ~ ~-1 ~ #tid:air_or_liquid positioned ~ ~-1 ~ run function tid:dungeon/infernal/glassbridge/pillar_west
