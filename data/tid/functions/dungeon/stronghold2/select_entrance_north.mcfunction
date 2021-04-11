#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/entrance_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~12 ~139 ~20 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~12 255 ~20 minecraft:stone replace minecraft:black_concrete
fill ~2 255 ~ ~2 255 ~16 minecraft:light_gray_concrete replace minecraft:stone
fill ~10 255 ~ ~10 255 ~16 minecraft:light_gray_concrete replace minecraft:stone
fill ~ 255 ~17 ~12 255 ~17 minecraft:light_gray_concrete replace minecraft:stone
fill ~6 255 ~20 ~6 255 ~18 minecraft:light_gray_concrete replace minecraft:stone
fill ~ 255 ~5 ~1 255 ~5 minecraft:light_gray_concrete replace minecraft:stone
fill ~11 255 ~5 ~12 255 ~5 minecraft:light_gray_concrete replace minecraft:stone
fill ~3 255 ~3 ~9 255 ~3 minecraft:light_gray_concrete replace minecraft:stone

#Randomize blocks
scoreboard players set xmax value 13
scoreboard players set ymax value 12
scoreboard players set zmax value 21
function tid:dungeon/stronghold2/rng/run_rng

#We're done here
kill @s

