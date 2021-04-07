#Spawn the initial pillar
fill ~ ~ ~ ~ ~3 ~ prismarine replace water
fill ~ ~ ~ ~ ~ ~ prismarine replace gravel

#Extend the structure upward
execute positioned ~ ~4 ~ run function tid:misc/water_stalag_extend

execute positioned ~1 ~ ~1 run function tid:misc/water_stalag_extend
execute positioned ~-1 ~ ~1 run function tid:misc/water_stalag_extend
execute positioned ~-1 ~ ~-1 run function tid:misc/water_stalag_extend
execute positioned ~1 ~ ~-1 run function tid:misc/water_stalag_extend

execute positioned ~1 ~ ~ run function tid:misc/water_stalag_extend
execute positioned ~ ~ ~1 run function tid:misc/water_stalag_extend
execute positioned ~-1 ~ ~ run function tid:misc/water_stalag_extend
execute positioned ~ ~ ~-1 run function tid:misc/water_stalag_extend

execute positioned ~2 ~ ~ run function tid:misc/water_stalag_extend
execute positioned ~ ~ ~2 run function tid:misc/water_stalag_extend
execute positioned ~-2 ~ ~ run function tid:misc/water_stalag_extend
execute positioned ~ ~ ~-2 run function tid:misc/water_stalag_extend

execute positioned ~2 ~ ~1 run function tid:misc/water_stalag_extend
execute positioned ~1 ~ ~2 run function tid:misc/water_stalag_extend
execute positioned ~-2 ~ ~1 run function tid:misc/water_stalag_extend
execute positioned ~1 ~ ~-2 run function tid:misc/water_stalag_extend

execute positioned ~2 ~ ~-1 run function tid:misc/water_stalag_extend
execute positioned ~-1 ~ ~2 run function tid:misc/water_stalag_extend
execute positioned ~-2 ~ ~-1 run function tid:misc/water_stalag_extend
execute positioned ~-1 ~ ~-2 run function tid:misc/water_stalag_extend