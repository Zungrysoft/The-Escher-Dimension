#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:stronghold2/portal_west", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~15 ~135 ~10 minecraft:blue_wool replace minecraft:orange_wool

#Mark this area on the map
fill ~ 255 ~ ~15 255 ~10 minecraft:stone replace minecraft:black_concrete
#Leaving the experimental code for height-based maps here in case I ever decide to actually implement it
#execute if score @s y matches 61.. fill ~-2 255 ~-9 ~2 255 ~-1 minecraft:gray_concrete replace minecraft:black_concrete
#execute if score @s y matches 61.. fill ~-2 255 ~-9 ~2 255 ~-1 minecraft:gray_concrete replace minecraft:light_gray_concrete
#execute if score @s y matches 61.. fill ~-2 255 ~-9 ~2 255 ~-1 minecraft:gray_concrete replace minecraft:stone
#execute if score @s y matches 45..60 fill ~-2 255 ~-9 ~2 255 ~-1 minecraft:stone replace minecraft:black_concrete
#execute if score @s y matches 45..60 fill ~-2 255 ~-9 ~2 255 ~-1 minecraft:stone replace minecraft:light_gray_concrete
#execute if score @s y matches ..44 fill ~-2 255 ~-9 ~2 255 ~-1 minecraft:light_gray_concrete replace minecraft:black_concrete

#Count the room in the total
scoreboard players remove stronghold2_rooms value 1

#We're done here
kill @s

