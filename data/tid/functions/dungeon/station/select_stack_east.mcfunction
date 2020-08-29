#Pick a structure from this list
setblock ~1 ~-1 ~-5 minecraft:structure_block{name: "tid:station/stack_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_40 run setblock ~1 ~-1 ~-5 minecraft:structure_block{name: "tid:station/stack_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_25 run setblock ~1 ~-1 ~-5 minecraft:structure_block{name: "tid:station/stack_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_20 run setblock ~1 ~-1 ~-5 minecraft:structure_block{name: "tid:station/stack_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_15 run setblock ~1 ~-1 ~-5 minecraft:structure_block{name: "tid:station/stack_6", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~1 ~-1 ~-5 minecraft:structure_block{name: "tid:station/stack_8", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_08 run setblock ~1 ~-1 ~-5 minecraft:structure_block{name: "tid:station/stack_10", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~1 ~-1 ~-5 minecraft:structure_block{name: "tid:station/stack_11", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_06 run setblock ~1 ~-1 ~-5 minecraft:structure_block{name: "tid:station/stack_13", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~1 ~0 ~-5 minecraft:redstone_block

#Mark this area as generated
fill ~1 ~127 ~-5 ~15 ~135 ~5 minecraft:blue_wool

#Count the room in the total
scoreboard players add @e[name="station_roomcount",type=area_effect_cloud,limit=1] tries 1

#We're done here
kill @s

