#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Decide what to build
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players set temp value 1

#Build it
execute if score temp value matches 0 run function tid:misc/soulsand_monolith
execute if score temp value matches 1 run function tid:misc/soulsand_gravel
