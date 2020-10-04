#Pick the Room
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sand2/event1_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate the structure block
setblock ~ ~1 ~ minecraft:redstone_block

#Set the event value to 1 so the game knows not to generate any other rooms
scoreboard players set north value 1
scoreboard players set south value 1
scoreboard players set east value 1
scoreboard players set west value 1
scoreboard players set event1 value 1