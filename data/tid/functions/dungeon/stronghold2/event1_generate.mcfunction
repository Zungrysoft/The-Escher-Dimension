#Change the room into the event room
execute if predicate tid:random_05 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/nexus_event1_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Note that a portal has been successfully generated
data modify storage tid stronghold_hellion_portals set value 1

#Mark this area on the map. It has priority over all other rooms.
fill ~ 255 ~ ~12 255 ~12 minecraft:red_concrete