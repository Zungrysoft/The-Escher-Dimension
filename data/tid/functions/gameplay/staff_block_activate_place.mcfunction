#Take the item
execute unless entity @s[gamemode=creative] run clear @s chiseled_quartz_block 1

#Place the block
setblock ~ ~ ~ chiseled_quartz_block destroy

#Play a sound
playsound minecraft:block.stone.break block @a