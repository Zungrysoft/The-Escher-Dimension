#Take the item
execute unless entity @s[gamemode=creative] run clear @s chiseled_quartz_block 1

#Place the block
setblock ~ ~ ~ chiseled_quartz_block destroy

#Particles
execute align xyz run particle minecraft:block chiseled_quartz_block ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 0 20

#Play a sound
playsound minecraft:block.stone.break block @a
