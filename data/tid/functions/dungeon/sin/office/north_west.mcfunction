#Determine the structure block
function tid:dungeon/sin/office/select

#Edit its orientation
data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"

#Activate it
setblock ~ ~1 ~ redstone_block
