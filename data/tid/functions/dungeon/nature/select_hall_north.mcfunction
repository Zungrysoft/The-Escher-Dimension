#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/hall_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_10 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/hall_north_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_04 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:nature/hall_north_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~1 ~128 ~1 ~7 ~133 ~11 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~8 255 ~12 minecraft:oak_planks replace minecraft:black_concrete
fill ~4 255 ~ ~4 255 ~12 minecraft:stone replace minecraft:oak_planks

#Add the flowers in
scoreboard players set xmax value 9
scoreboard players set zmax value 13
execute positioned ~ ~2 ~ run function tid:dungeon/nature/rng/flower_run_rng

#Add in doorways
summon minecraft:area_effect_cloud ~4 ~1 ~ {Duration:99999999,CustomName:"\"nature_north\""}
summon minecraft:area_effect_cloud ~4 ~1 ~12 {Duration:99999999,CustomName:"\"nature_south\""}

#Count the room in the total
scoreboard players remove nature_rooms value 1

#We're done here
kill @s

