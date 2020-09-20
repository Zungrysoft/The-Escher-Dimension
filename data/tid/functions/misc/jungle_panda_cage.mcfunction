#Remove the command block
fill ~ ~ ~ ~ ~1 ~ air

#Randomly scatter stuff in the cage
execute positioned ~-1 ~ ~-1 run function tid:misc/jungle_panda_objects
execute positioned ~-1 ~ ~ run function tid:misc/jungle_panda_objects
execute positioned ~-1 ~ ~1 run function tid:misc/jungle_panda_objects

execute positioned ~ ~ ~-1 run function tid:misc/jungle_panda_objects
execute positioned ~ ~ ~ run function tid:misc/jungle_panda_objects
execute positioned ~ ~ ~1 run function tid:misc/jungle_panda_objects

execute positioned ~1 ~ ~-1 run function tid:misc/jungle_panda_objects
execute positioned ~1 ~ ~ run function tid:misc/jungle_panda_objects
execute positioned ~1 ~ ~1 run function tid:misc/jungle_panda_objects

#Summon the panda
summon panda ~ ~1 ~