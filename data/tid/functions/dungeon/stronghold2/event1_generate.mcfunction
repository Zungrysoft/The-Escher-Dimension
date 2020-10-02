#Change the room into the event room
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_event1_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Note that a portal has been successfully generated
scoreboard players add hellion_portals value 1

#Mark this area on the map. It has priority over all other rooms.
fill ~ 255 ~ ~12 255 ~12 minecraft:white_concrete