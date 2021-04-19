#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ blue_ice

#Build the stalag
execute positioned ~ ~1 ~ run function tid:misc/ice_stalag_up_pillar

execute positioned ~1 ~ ~ run function tid:misc/ice_stalag_up_pillar
execute positioned ~-1 ~ ~ run function tid:misc/ice_stalag_up_pillar
execute positioned ~ ~ ~1 run function tid:misc/ice_stalag_up_pillar
execute positioned ~ ~ ~-1 run function tid:misc/ice_stalag_up_pillar

execute positioned ~2 ~-1 ~ run function tid:misc/ice_stalag_up_pillar
execute positioned ~-2 ~-1 ~ run function tid:misc/ice_stalag_up_pillar
execute positioned ~ ~-1 ~2 run function tid:misc/ice_stalag_up_pillar
execute positioned ~ ~-1 ~-2 run function tid:misc/ice_stalag_up_pillar

execute positioned ~1 ~-1 ~1 run function tid:misc/ice_stalag_up_pillar
execute positioned ~-1 ~-1 ~1 run function tid:misc/ice_stalag_up_pillar
execute positioned ~1 ~-1 ~-1 run function tid:misc/ice_stalag_up_pillar
execute positioned ~-1 ~-1 ~-1 run function tid:misc/ice_stalag_up_pillar

execute if predicate tid:random_80 positioned ~2 ~-1 ~1 run function tid:misc/ice_stalag_up_pillar
execute if predicate tid:random_80 positioned ~-2 ~-1 ~1 run function tid:misc/ice_stalag_up_pillar
execute if predicate tid:random_80 positioned ~2 ~-1 ~-1 run function tid:misc/ice_stalag_up_pillar
execute if predicate tid:random_80 positioned ~-2 ~-1 ~-1 run function tid:misc/ice_stalag_up_pillar

execute if predicate tid:random_60 positioned ~1 ~-1 ~2 run function tid:misc/ice_stalag_up_pillar
execute if predicate tid:random_60 positioned ~-1 ~-1 ~2 run function tid:misc/ice_stalag_up_pillar
execute if predicate tid:random_60 positioned ~1 ~-1 ~-2 run function tid:misc/ice_stalag_up_pillar
execute if predicate tid:random_60 positioned ~-1 ~-1 ~-2 run function tid:misc/ice_stalag_up_pillar
