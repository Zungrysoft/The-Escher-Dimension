#Walls
execute if predicate tid:random_80 if block ~1 ~ ~ #tid:coral_grow run setblock ~ ~ ~ tube_coral_wall_fan[facing=west]
execute if predicate tid:random_80 if block ~-1 ~ ~ #tid:coral_grow run setblock ~ ~ ~ tube_coral_wall_fan[facing=east]
execute if predicate tid:random_80 if block ~ ~ ~1 #tid:coral_grow run setblock ~ ~ ~ tube_coral_wall_fan[facing=north]
execute if predicate tid:random_80 if block ~ ~ ~-1 #tid:coral_grow run setblock ~ ~ ~ tube_coral_wall_fan[facing=south]

#Floor
execute if block ~ ~-1 ~ #tid:coral_grow run setblock ~ ~ ~ tube_coral
execute if predicate tid:random_25 if block ~ ~-1 ~ #tid:coral_grow run setblock ~ ~ ~ tube_coral_fan
