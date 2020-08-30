#Change the room into the event room
setblock ~ ~ ~ minecraft:structure_block{name: "tid:brick/event1_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Note that a portal has been successfully generated
scoreboard players add brick_layer_4_portals value 1

#Mark this area on the map. It has priority over all other rooms.
fill ~ 255 ~ ~7 255 ~7 white_concrete