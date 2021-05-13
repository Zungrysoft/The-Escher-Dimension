#Build
setblock ~ ~ ~ purpur_block
setblock ~ ~ ~7 purpur_block

setblock ~-1 ~ ~ minecraft:lever[face=wall,facing=north,powered=true]
setblock ~-1 ~ ~7 minecraft:lever[face=wall,facing=south,powered=true]

setblock ~-1 ~ ~1 redstone_lamp
setblock ~-1 ~ ~6 redstone_lamp

fill ~ ~ ~1 ~ ~ ~6 air
execute if block ~1 ~ ~3 lava run fill ~ ~ ~1 ~ ~ ~6 lava

fill ~-1 ~ ~2 ~-2 ~ ~5 dark_prismarine

#Recurse
execute if block ~1 ~-1 ~3 #tid:air_or_liquid positioned ~ ~-1 ~ run function tid:misc/neon_port_west_down
