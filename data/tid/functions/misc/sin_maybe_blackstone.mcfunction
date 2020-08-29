#Delete the Command Block
setblock ~ ~ ~ air

#Delete the Redstone Block
fill ~ ~-1 ~ ~ ~1 ~ air replace redstone_block

#Decide whether to put in the block
execute if predicate tid:random_40 run setblock ~ ~ ~ blackstone