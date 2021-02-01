#Pick a structure from this list
setblock ~ ~3 ~ minecraft:structure_block{name: "tid:finale/boss/walkway/stairs_north", posX: 0, posY: -3, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~4 ~ minecraft:air
setblock ~ ~4 ~ minecraft:redstone_block

#Kill all other doorways
kill @e[tag=walkway]

#Summon the next doorway
summon minecraft:area_effect_cloud ~1 ~6 ~ {Duration:99999999,CustomName:"\"finale_walkway_north\"",Tags:["walkway"]}
