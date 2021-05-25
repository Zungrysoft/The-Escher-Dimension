#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Decide what to build
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players set temp value 1
execute if predicate tid:random_25 run scoreboard players set temp value 2

#Event rooms
execute if score art_templates_soulsand value matches 1 if score soulsand_rooms value matches ..60 run scoreboard players set temp value 3
execute if score art_templates_soulsand value matches 0 if score soulsand_rooms value matches ..110 run scoreboard players set temp value 3

#Build it
execute if score temp value matches 0 run function tid:misc/soulsand_monolith
execute if score temp value matches 1 run function tid:misc/soulsand_gravel
execute if score temp value matches 2 run function tid:misc/soulsand_pillars
execute if score temp value matches 3 run function tid:misc/soulsand_art_pedestal
