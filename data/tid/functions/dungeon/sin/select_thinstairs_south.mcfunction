#Pick a structure from this list
setblock ~ ~3 ~ minecraft:structure_block{name: "tid:sin/thinstairs_south", posX: 0, posY: -3, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~4 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~0 ~-120 ~3 air

#Remove any walls between this room and the one it generated from
function tid:dungeon/sin/remove_walls

#Summon doorway
summon area_effect_cloud ~ ~5 ~3 {Duration:99999999,CustomName:"\"sin_south\""}

#Count the room in the total
scoreboard players remove sin_rooms value 1

#We're done here
kill @s

