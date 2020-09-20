#The Illusioners' secret chest has been disturbed! They teleport in to stop you!
summon illusioner ~-2 ~-2 ~-2 {PersistenceRequired:1,Tags:["keep"]}
summon illusioner ~2 ~-2 ~2 {PersistenceRequired:1,Tags:["keep"]}

#Ensure the Illusioner has space to spawn in
setblock ~-2 ~-2 ~-2 air destroy
setblock ~-2 ~-1 ~-2 air destroy
setblock ~2 ~-2 ~2 air destroy
setblock ~2 ~-1 ~2 air destroy

#Spawn particles
particle minecraft:cloud ~-2 ~-2 ~-2
particle minecraft:cloud ~-2 ~-1 ~-2
particle minecraft:cloud ~-2 ~-2 ~-2
particle minecraft:cloud ~-2 ~-1 ~-2
particle minecraft:cloud ~2 ~-2 ~2
particle minecraft:cloud ~2 ~-1 ~2
particle minecraft:cloud ~2 ~-2 ~2
particle minecraft:cloud ~2 ~-1 ~2

#Play a sound effect
playsound minecraft:block.beacon.power_select player @a
playsound minecraft:item.trident.return block @a

#Kill detector
kill @s