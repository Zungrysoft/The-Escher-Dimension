#Delete Command Block
fill ~ ~ ~ ~ ~-1 ~ air

#Decide whether to put a lantern there
execute if predicate tid:random_33 run setblock ~ ~ ~ chain
execute if block ~ ~ ~ chain run setblock ~ ~-1 ~ lantern[hanging=true]