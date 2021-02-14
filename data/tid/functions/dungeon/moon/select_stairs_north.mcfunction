#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:moon/stairs_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Open the wall if necessary
execute if entity @s[name="moon_north"] run fill ~1 ~1 ~5 ~3 ~3 ~5 air
execute if entity @s[name="moon_north"] run fill ~1 ~ ~5 ~3 ~ ~5 polished_granite
execute at @s run function tid:dungeon/moon/open_room

#Mark this area on the map
fill ~ 255 ~ ~4 255 ~5 minecraft:granite replace minecraft:end_stone
fill ~ 255 ~ ~4 255 ~5 minecraft:granite replace minecraft:black_concrete
fill ~2 255 ~ ~2 255 ~5 minecraft:red_sandstone replace minecraft:granite

#Mark this area as generated
fill ~ ~128 ~ ~4 ~134 ~5 minecraft:blue_wool

#Fill moon stone around the edge
fill ~-1 ~-1 ~-1 ~5 ~7 ~6 end_stone replace stone

#Count the room in the total
scoreboard players remove moon_rooms value 1

#We're done here
kill @s
