#Build
setblock ~ ~ ~ polished_andesite
execute if predicate tid:random_05 run setblock ~ ~ ~ andesite

#Recurse
execute positioned ~ ~-1 ~ if block ~ ~ ~ #tid:air_or_liquid run function tid:misc/infernal_tower_pillar_recurse
