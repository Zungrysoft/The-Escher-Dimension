#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:hellion/stairwell", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~-128 ~ ~2 ~-122 ~2 air

#Open doorway (unless this is an up doorway)
execute unless entity @s[name="hellion_up"] at @s run setblock ~ ~ ~ air
execute unless entity @s[name="hellion_up"] at @s run setblock ~ ~1 ~ air

#Count the room in the total
scoreboard players remove hellion_rooms value 1

#We're done here
kill @s

