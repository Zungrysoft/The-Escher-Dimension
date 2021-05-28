#Take the item
execute unless entity @s[gamemode=creative] run clear @s fire_charge 3

#Teleport the creatures
#execute as @e[type=#tid:living,distance=0..10] run tp @s ^ ^ ^-0.4
execute as @e[type=#tid:monster,distance=0..10] run tp @s ^ ^ ^-0.4

#Particles
execute if score temp value matches ..75 run particle minecraft:dust 0 0.2 0.2 2 ~ ~ ~ 1 1 1 0 60

#Play a sound
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 2 2
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 2 2.00
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 2 1.99
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 2 1.98
playsound minecraft:entity.phantom.hurt player @a ~ ~ ~ 2 0.5
