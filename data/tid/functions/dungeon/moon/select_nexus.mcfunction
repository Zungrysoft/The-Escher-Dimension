#Pick a structure from this list
setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_1", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_2", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_3", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_4", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_5", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_6", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_7", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_8", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_9", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_09 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_10", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_11", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_07 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_12", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_13", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_14", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_15", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_16", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_17", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_18", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_05 run setblock ~1 ~ ~1 minecraft:structure_block{name: "tid:moon/nexus_19", posX: -1, posY: 0, posZ: -1, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~1 ~1 minecraft:redstone_block

#Rocky room
execute if predicate tid:random_08 positioned ~5 ~1 ~5 run function tid:misc/moon_jagged_floor_run

#Trapped room
execute if predicate tid:random_20 if block ~5 ~ ~5 polished_granite positioned ~5 ~8 ~5 run function tid:misc/moon_potion_dropper

#Polished Room
execute if predicate tid:random_005 run fill ~ ~ ~ ~10 ~8 ~10 polished_granite replace granite

#Open wall
execute at @s run function tid:dungeon/moon/open_room

#Mark this area on the map
fill ~ 255 ~ ~10 255 ~10 minecraft:granite replace minecraft:end_stone
fill ~ 255 ~ ~10 255 ~10 minecraft:granite replace minecraft:black_concrete
fill ~5 255 ~ ~5 255 ~10 minecraft:red_sandstone replace minecraft:granite
fill ~ 255 ~5 ~10 255 ~5 minecraft:red_sandstone replace minecraft:granite

#Mark this area as generated
fill ~ ~128 ~ ~10 ~136 ~10 minecraft:blue_wool

#Fill moon stone around the edge
fill ~-1 ~-1 ~-1 ~11 ~9 ~11 end_stone replace stone

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s

