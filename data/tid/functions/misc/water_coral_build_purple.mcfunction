#Block
setblock ~ ~ ~ bubble_coral_block

#Coral on top
execute if predicate tid:random_20 if block ~ ~1 ~ water run setblock ~ ~1 ~ bubble_coral
execute if predicate tid:random_10 if block ~ ~1 ~ water run setblock ~ ~1 ~ bubble_coral_fan

#Coral fans on the side
execute if predicate tid:random_20 if block ~1 ~ ~ water run setblock ~1 ~ ~ bubble_coral_wall_fan[facing=east]
execute if predicate tid:random_20 if block ~-1 ~ ~ water run setblock ~-1 ~ ~ bubble_coral_wall_fan[facing=west]
execute if predicate tid:random_20 if block ~ ~ ~1 water run setblock ~ ~ ~1 bubble_coral_wall_fan[facing=south]
execute if predicate tid:random_20 if block ~ ~ ~-1 water run setblock ~ ~ ~-1 bubble_coral_wall_fan[facing=north]
