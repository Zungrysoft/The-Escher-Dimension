#Carve one cave segment
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/chambers/cave", posX: -5, posY: 0, posZ: -5, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate structure block
setblock ~ ~1 ~ redstone_block

#Maybe place a marker
execute if predicate tid:random_15 run summon area_effect_cloud ~ ~2 ~ {Duration:99999999,Tags:["cave_item"]}
