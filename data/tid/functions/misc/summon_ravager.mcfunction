#Delete the command block
fill ~ ~ ~ ~ ~1 ~ air

#Determine which variant to summon
scoreboard players set temp value 0
execute if predicate tid:random_50 if entity @e[sort=nearest,predicate=tid:in_layer_jungle] run scoreboard players set temp value 1
execute if predicate tid:random_33 if entity @e[sort=nearest,predicate=tid:in_layer_jungle] run scoreboard players set temp value 2

#Summon it
execute if score temp value matches 0 run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1}
execute if score temp value matches 1 run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1,Passengers:[{id:pillager,PersistenceRequired:1}]}
execute if score temp value matches 2 run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1,Passengers:[{id:vindicator,PersistenceRequired:1}]}


