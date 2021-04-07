#Check for the wall
execute if block ~ ~ ~ #tid:jungle_solid_blocks run function tid:misc/water_chain_end

#Recurse
scoreboard players remove temp8 value 1
execute if score temp8 value matches 1.. if block ~ ~ ~ water positioned ~ ~ ~1 run function tid:misc/water_chain_recurse

#Tail-end: Build the chain length if we successfully hit the end
execute if score found value matches 1 run function tid:misc/water_chain_length
