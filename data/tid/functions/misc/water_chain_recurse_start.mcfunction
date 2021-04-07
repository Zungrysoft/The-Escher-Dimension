#Start by setting the max distance to search
scoreboard players set temp8 value 60

#Set the success value
scoreboard players set found value 0

#Search for the south end
execute positioned ~ ~ ~1 run function tid:misc/water_chain_recurse

#If the operation succeeded, construct the end piece
execute if score found value matches 1 run function tid:misc/water_chain_end
