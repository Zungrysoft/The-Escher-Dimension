#Delete the command block
fill ~ ~ ~ ~ ~-1 ~ air

#Place the four pillars
execute positioned ~ ~ ~ run function tid:misc/ice_stalag_down_pillar
execute positioned ~1 ~ ~ run function tid:misc/ice_stalag_down_pillar
execute positioned ~ ~ ~1 run function tid:misc/ice_stalag_down_pillar
execute positioned ~1 ~ ~1 run function tid:misc/ice_stalag_down_pillar
