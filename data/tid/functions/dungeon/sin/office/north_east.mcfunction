#Determine the structure block
function tid:dungeon/sin/office/select

#Edit its orientation
data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
data modify block ~ ~ ~ posX set value 4

#Activate it
setblock ~ ~1 ~ redstone_block
