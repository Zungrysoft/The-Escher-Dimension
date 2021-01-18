#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/factory/ladder_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~0 ~139 ~2 blue_wool

#Add the stepping block
execute unless block ~ ~9 ~3 air run setblock ~ ~9 ~2 nether_bricks

#We're done here
kill @s

