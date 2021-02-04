#Determine the structure block
function tid:dungeon/sin/office/select

#Edit its orientation
data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"
data modify block ~ ~ ~ posZ set value 3

#Activate it
setblock ~ ~1 ~ redstone_block
