#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air
setblock ~ ~-1 ~ grass

#Place all of the tall flowers
execute positioned ~-2 ~ ~-2 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~-1 ~ ~-2 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~0 ~ ~-2 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~1 ~ ~-2 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~2 ~ ~-2 if predicate tid:random_33 run function tid:misc/nature_tall_flower

execute positioned ~-2 ~ ~-1 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~-1 ~ ~-1 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~0 ~ ~-1 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~1 ~ ~-1 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~2 ~ ~-1 if predicate tid:random_33 run function tid:misc/nature_tall_flower

execute positioned ~-2 ~ ~ if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~-1 ~ ~ if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~0 ~ ~ if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~1 ~ ~ if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~2 ~ ~ if predicate tid:random_33 run function tid:misc/nature_tall_flower

execute positioned ~-2 ~ ~1 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~-1 ~ ~1 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~0 ~ ~1 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~1 ~ ~1 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~2 ~ ~1 if predicate tid:random_33 run function tid:misc/nature_tall_flower

execute positioned ~-2 ~ ~2 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~-1 ~ ~2 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~0 ~ ~2 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~1 ~ ~2 if predicate tid:random_33 run function tid:misc/nature_tall_flower
execute positioned ~2 ~ ~2 if predicate tid:random_33 run function tid:misc/nature_tall_flower

#Tracker
scoreboard players add nature_totems value 1
