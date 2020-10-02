#Change the room into the event room
setblock ~ ~ ~ minecraft:structure_block{name: "tid:station/stack_event1_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Note that a portal has been successfully generated
scoreboard players add jungle_portals value 1

#Mark this area on the map. It has priority over all other rooms.
fill ~ 255 ~ ~14 255 ~10 minecraft:white_concrete
fill ~ 255 ~ ~14 255 ~10 minecraft:white_concrete
fill ~7 255 ~ ~7 255 ~10 minecraft:red_concrete replace minecraft:white_concrete
fill ~ 255 ~5 ~14 255 ~5 minecraft:red_concrete replace minecraft:white_concrete