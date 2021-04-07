#Center
execute if block ~ ~ ~ water run function tid:misc/water_coral_build

#Adjacent
execute if predicate tid:random_33 positioned ~1 ~ ~ if block ~ ~ ~ water run function tid:misc/water_coral_build
execute if predicate tid:random_33 positioned ~-1 ~ ~ if block ~ ~ ~ water run function tid:misc/water_coral_build
execute if predicate tid:random_33 positioned ~ ~ ~1 if block ~ ~ ~ water run function tid:misc/water_coral_build
execute if predicate tid:random_33 positioned ~ ~ ~-1 if block ~ ~ ~ water run function tid:misc/water_coral_build
