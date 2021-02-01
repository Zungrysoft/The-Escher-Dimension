#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:finale/boss/walkway/stairs_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:air
setblock ~ ~1 ~ minecraft:redstone_block

#Kill all other doorways
kill @e[tag=walkway]

#Summon the next doorway
summon minecraft:area_effect_cloud ~3 ~6 ~1 {Duration:99999999,CustomName:"\"finale_walkway_east\"",Tags:["walkway"]}
