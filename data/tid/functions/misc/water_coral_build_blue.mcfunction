#Block
setblock ~ ~ ~ tube_coral_block

#Coral on top
execute if predicate tid:random_20 if block ~ ~1 ~ water run setblock ~ ~1 ~ tube_coral
execute if predicate tid:random_10 if block ~ ~1 ~ water run setblock ~ ~1 ~ tube_coral_fan
execute if predicate tid:random_10 if block ~ ~1 ~ water positioned ~ ~1 ~ run function tid:misc/sea_pickle

#Coral fans on the side
execute if predicate tid:random_20 if block ~1 ~ ~ water run setblock ~1 ~ ~ tube_coral_wall_fan[facing=east]
execute if predicate tid:random_20 if block ~-1 ~ ~ water run setblock ~-1 ~ ~ tube_coral_wall_fan[facing=west]
execute if predicate tid:random_20 if block ~ ~ ~1 water run setblock ~ ~ ~1 tube_coral_wall_fan[facing=south]
execute if predicate tid:random_20 if block ~ ~ ~-1 water run setblock ~ ~ ~-1 tube_coral_wall_fan[facing=north]
