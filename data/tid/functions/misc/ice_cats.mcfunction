#Remove the command block
fill ~ ~ ~ ~ ~1 ~ air

#Summon some cats
summon cat ~ ~ ~ {PersistenceRequired:1b}
summon cat ~1 ~ ~ {PersistenceRequired:1b}
execute if predicate tid:random_50 run summon cat ~ ~ ~1 {PersistenceRequired:1b}
execute if predicate tid:random_50 run summon cat ~-1 ~ ~ {PersistenceRequired:1b}
