#Check for chiseled stone bricks to see if we should be generating a small door instead
scoreboard players set temp value 0
execute at @s if block ~ ~-1 ~ chiseled_stone_bricks run scoreboard players set temp value 1

#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:jungle/tower_thin_north_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~1 ~-128 ~1 ~3 ~-124 ~5 air

#Count the room in the total
scoreboard players remove jungle_tower_rooms value 1

#Open the wall up to the adjacent room
execute if score temp value matches 1 at @s run setblock ~ ~-1 ~ chiseled_stone_bricks
execute at @s run function tid:dungeon/jungle/open_room

#Run the randomizer
scoreboard players set xmax value 7
scoreboard players set zmax value 9
scoreboard players set ymax value 6
execute positioned ~-1 ~-1 ~-1 run function tid:dungeon/jungle/rng/run_rng_nopillar

#We're done here
kill @s

