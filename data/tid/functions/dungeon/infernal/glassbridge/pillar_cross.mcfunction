#Build
fill ~2 ~ ~ ~8 ~ ~10 nether_bricks
fill ~ ~ ~2 ~10 ~ ~8 nether_bricks
setblock ~5 ~ ~ polished_andesite
setblock ~5 ~ ~10 polished_andesite
setblock ~ ~ ~5 polished_andesite
setblock ~10 ~ ~5 polished_andesite
fill ~2 ~128 ~ ~8 ~128 ~10 blue_wool
fill ~ ~128 ~2 ~10 ~128 ~8 blue_wool

#Recurse
execute if block ~ ~-1 ~ #tid:air_or_liquid positioned ~ ~-1 ~ run function tid:dungeon/infernal/glassbridge/pillar_cross
