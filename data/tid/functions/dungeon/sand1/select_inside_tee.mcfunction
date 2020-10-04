#Pick the Room
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sand1/tee1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#There are very few structures of this type, so maybe select a quad instead
execute if predicate tid:random_90 run function tid:dungeon/sand1/select_inside_quad
