#Carve one cave segment
setblock ~ ~ ~ minecraft:structure_block{name: "tid:sin/cave", posX: -11, posY: 0, posZ: -11, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate structure block
setblock ~ ~1 ~ redstone_block

#Summon scatter markers
execute if predicate tid:random_10 run summon area_effect_cloud ~8 ~16 ~ {Duration:99999999,Tags:["scatter_marker"]}
execute if predicate tid:random_10 run summon area_effect_cloud ~-8 ~16 ~ {Duration:99999999,Tags:["scatter_marker"]}
execute if predicate tid:random_10 run summon area_effect_cloud ~ ~16 ~8 {Duration:99999999,Tags:["scatter_marker"]}
execute if predicate tid:random_10 run summon area_effect_cloud ~ ~16 ~-8 {Duration:99999999,Tags:["scatter_marker"]}
