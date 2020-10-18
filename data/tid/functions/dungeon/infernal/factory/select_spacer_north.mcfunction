#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:infernal/factory/spacer_north", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Mark this area as generated
fill ~ ~128 ~ ~4 ~134 ~0 air

#Set the tries of the two doorways in this structure to full, so they immediately build another spacer instead of wasting time
execute positioned ~2 ~1 ~ as @e[type=area_effect_cloud,distance=0..0.5] run scoreboard players set @s tries 666

#We're done here
kill @s

