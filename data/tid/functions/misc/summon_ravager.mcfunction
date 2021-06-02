#Delete the command block
fill ~ ~ ~ ~ ~1 ~ air

#Determine which variant to summon
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players set temp value 1

#Summon it
execute if score temp value matches 0 run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1,Passengers:[{id:pillager,PersistenceRequired:1,HandItems:[{id:"minecraft:crossbow",Count:1b}]}]}
execute if score temp value matches 1 run summon minecraft:ravager ~ ~ ~ {PersistenceRequired:1,Passengers:[{id:vindicator,PersistenceRequired:1,HandItems:[{id:"minecraft:iron_axe",Count:1b}]}]}
