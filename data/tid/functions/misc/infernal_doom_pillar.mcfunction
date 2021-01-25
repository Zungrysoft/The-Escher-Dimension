#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Decide whether to generate it
execute if predicate tid:random_33 run function tid:misc/infernal_doom_pillar_run
