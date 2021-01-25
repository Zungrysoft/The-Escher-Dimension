#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Randomly place the vines
execute positioned ~ ~9 ~ run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_80 positioned ~1 ~9 ~ run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_80 positioned ~ ~9 ~1 run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_80 positioned ~-1 ~9 ~ run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_80 positioned ~ ~9 ~-1 run function tid:misc/infernal_weeping_vine

execute if predicate tid:random_80 positioned ~1 ~9 ~-1 run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_80 positioned ~1 ~9 ~-1 run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_80 positioned ~-1 ~9 ~1 run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_80 positioned ~-1 ~9 ~1 run function tid:misc/infernal_weeping_vine

execute if predicate tid:random_10 positioned ~2 ~9 ~1 run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_10 positioned ~-2 ~9 ~-1 run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_10 positioned ~ ~9 ~2 run function tid:misc/infernal_weeping_vine
execute if predicate tid:random_10 positioned ~ ~9 ~-2 run function tid:misc/infernal_weeping_vine
