#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/misc/secret", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~19 ~135 ~18 minecraft:blue_wool

#Randomly change one of the barrels' loot tables to the secret loot table
execute positioned ~2 ~1 ~2 run function tid:misc/infernal_barrel_x

#Count the number of drills generated
scoreboard players remove infernal_secrets value 1
