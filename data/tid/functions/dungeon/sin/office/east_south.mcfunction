#Determine the structure block
function tid:dungeon/sin/office/select

#Edit its orientation
data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
data modify block ~ ~ ~ posX set value 3
data modify block ~ ~ ~ posZ set value 4

#Activate it
setblock ~ ~1 ~ redstone_block
