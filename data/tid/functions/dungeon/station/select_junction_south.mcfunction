#Pick a structure from this list
setblock ~-2 ~-3 ~1 minecraft:structure_block{name: "tid:station/junction_cross", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_33 run setblock ~-2 ~-3 ~1 minecraft:structure_block{name: "tid:station/junction_tee_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~-2 ~-3 ~1 minecraft:structure_block{name: "tid:station/junction_tee_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~-2 ~-3 ~1 minecraft:structure_block{name: "tid:station/junction_tee_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~-2 ~-3 ~1 minecraft:structure_block{name: "tid:station/junction_turn_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~-2 ~-3 ~1 minecraft:structure_block{name: "tid:station/junction_turn_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~-2 ~-3 ~1 minecraft:structure_block{name: "tid:station/junction_straight_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~-2 ~-2 ~1 minecraft:redstone_block

#Mark this area as generated
fill ~-2 ~125 ~1 ~2 ~133 ~5 minecraft:blue_wool

#Count the room in the total
scoreboard players add @e[name="station_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

