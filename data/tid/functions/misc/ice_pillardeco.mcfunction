#Build base pillar
fill ~ ~ ~ ~ ~2 ~ polished_basalt

#Decide which height of pillar to build
execute positioned ~ ~ ~ run function tid:misc/ice_pillardeco_build
execute if predicate tid:random_50 positioned ~ ~1 ~ run function tid:misc/ice_pillardeco_build
execute if predicate tid:random_33 positioned ~ ~2 ~ run function tid:misc/ice_pillardeco_build
execute if predicate tid:random_25 positioned ~ ~3 ~ run function tid:misc/ice_pillardeco_build
