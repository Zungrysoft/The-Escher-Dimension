#Remove the command block
fill ~ ~ ~ ~ ~1 ~ air

#Randomly scatter stuff in the cage
execute positioned ~-1 ~ ~-1 run function tid:misc/jungle_cage_objects
execute positioned ~-1 ~ ~ run function tid:misc/jungle_cage_objects
execute positioned ~-1 ~ ~1 run function tid:misc/jungle_cage_objects

execute positioned ~ ~ ~-1 run function tid:misc/jungle_cage_objects
execute positioned ~ ~ ~ run function tid:misc/jungle_cage_objects
execute positioned ~ ~ ~1 run function tid:misc/jungle_cage_objects

execute positioned ~1 ~ ~-1 run function tid:misc/jungle_cage_objects
execute positioned ~1 ~ ~ run function tid:misc/jungle_cage_objects
execute positioned ~1 ~ ~1 run function tid:misc/jungle_cage_objects

#Summon some parrots
summon parrot ~ ~2 ~
summon parrot ~1 ~2 ~
execute if predicate tid:random_50 run summon parrot ~ ~2 ~1
execute if predicate tid:random_50 run summon parrot ~-1 ~2 ~