#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/head_1", posX: -6, posY: 0, posZ: -6, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:air
setblock ~ ~1 ~ minecraft:redstone_block

#We're done here
execute if entity @s[name="finale_boss_up"] run kill @s
