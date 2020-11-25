#Pick a structure from this list
execute if score jungle_global value matches 0 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/towerbase_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score jungle_global value matches 1 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/towerbase_2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score jungle_global value matches 2 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/towerbase_3", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
execute if score jungle_global value matches 3 run setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/towerbase_4", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-126 ~ ~20 ~-120 ~20 air

#Count the room in the total
scoreboard players remove jungle_rooms value 1

#Interior
execute positioned ~3 ~4 ~3 run function tid:dungeon/jungle/select_arena

#Pillars
clone ~ ~-129 ~ ~5 ~-173 ~5 ~ ~-45 ~ masked
fill ~ ~-1 ~ ~5 ~-45 ~5 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~ ~5 ~-218 ~5 ~ ~-90 ~ masked
fill ~ ~-46 ~ ~5 ~-90 ~5 mossy_cobblestone replace orange_wool

clone ~15 ~-129 ~15 ~20 ~-173 ~20 ~15 ~-45 ~15 masked
fill ~15 ~-1 ~15 ~20 ~-45 ~20 mossy_cobblestone replace orange_wool
clone ~15 ~-174 ~15 ~20 ~-218 ~20 ~15 ~-90 ~15 masked
fill ~15 ~-46 ~15 ~20 ~-90 ~20 mossy_cobblestone replace orange_wool

clone ~ ~-129 ~15 ~5 ~-173 ~20 ~ ~-45 ~15 masked
fill ~ ~-1 ~15 ~5 ~-45 ~20 mossy_cobblestone replace orange_wool
clone ~ ~-174 ~15 ~5 ~-218 ~20 ~ ~-90 ~15 masked
fill ~ ~-46 ~15 ~5 ~-90 ~20 mossy_cobblestone replace orange_wool

clone ~15 ~-129 ~ ~20 ~-173 ~5 ~15 ~-45 ~ masked
fill ~15 ~-1 ~ ~20 ~-45 ~5 mossy_cobblestone replace orange_wool
clone ~15 ~-174 ~ ~20 ~-218 ~5 ~15 ~-90 ~ masked
fill ~15 ~-46 ~ ~20 ~-90 ~5 mossy_cobblestone replace orange_wool

#Run the randomizer
#Pillars
scoreboard players set xmax value 8
scoreboard players set zmax value 8
scoreboard players set ymax value 0
execute positioned ~-1 149 ~-1 run function tid:dungeon/jungle/rng/run_rng
scoreboard players set ymax value 0
execute positioned ~14 149 ~-1 run function tid:dungeon/jungle/rng/run_rng
scoreboard players set ymax value 0
execute positioned ~-1 149 ~14 run function tid:dungeon/jungle/rng/run_rng
scoreboard players set ymax value 0
execute positioned ~14 149 ~14 run function tid:dungeon/jungle/rng/run_rng
#Base
scoreboard players set xmax value 23
scoreboard players set zmax value 23
scoreboard players set ymax value 11
execute positioned ~-1 ~-1 ~-1 run function tid:dungeon/jungle/rng/run_rng_nopillar

#Place the locator
summon minecraft:area_effect_cloud ~10 ~ ~10 {Duration:99999999,CustomName:"\"jungle_towerbase\""}

#We're done here
kill @s

