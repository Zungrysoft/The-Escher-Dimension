#Determine the structure block
function tid:dungeon/sin/office/select

#Edit its orientation
data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"
data modify block ~ ~ ~ posX set value 3

#Activate it
setblock ~ ~1 ~ redstone_block
