#War Pigs and Nether Brick Barons

#Decide which monster gets summoned
scoreboard players set temp2 value 0
execute if predicate tid:random_33 run scoreboard players set temp2 value 1

#Summon it
execute if score temp2 value matches 0 run function tid:custom_mobs/war_pig_1
execute if score temp2 value matches 1 run function tid:custom_mobs/nether_brick_baron
