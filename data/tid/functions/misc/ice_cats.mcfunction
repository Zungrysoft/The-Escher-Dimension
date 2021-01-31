#Remove the command block
fill ~ ~ ~ ~ ~1 ~ air

#Summon some cats
summon cat ~ ~ ~
summon cat ~1 ~ ~
execute if predicate tid:random_50 run summon cat ~ ~ ~1
execute if predicate tid:random_50 run summon cat ~-1 ~ ~
