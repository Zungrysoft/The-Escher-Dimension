#Determine the structure block
function tid:dungeon/sin/office/select

#Edit its orientation
data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"
data modify block ~ ~ ~ posZ set value 4

#Activate it
setblock ~ ~1 ~ redstone_block
