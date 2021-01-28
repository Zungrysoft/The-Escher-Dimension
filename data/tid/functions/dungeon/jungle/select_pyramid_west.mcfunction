#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/pyramid_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if predicate tid:random_50 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/pyramid_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~14 ~-115 ~11 air

#Count the room in the total
scoreboard players remove jungle_rooms value 1

#Pillars
clone ~ ~-129 ~ ~14 ~-173 ~11 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~14 ~-45 ~11 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~ ~14 ~-218 ~11 ~ ~-90 ~ masked
fill ~ ~-46 ~ ~14 ~-90 ~11 mossy_cobblestone replace orange_wool

#Used to detect the advancement for this building
#summon minecraft:area_effect_cloud ~7 ~5 ~5 {Duration:99999999,CustomName:"\"adv_pyramid\""}

#Run the randomizer
scoreboard players set xmax value 17
scoreboard players set zmax value 14
scoreboard players set ymax value 15
execute positioned ~-1 149 ~-1 run function tid:dungeon/jungle/rng/run_rng

#We're done here
#kill @s

