#Message
tellraw @a[distance=0..15] "<Haunted Chest> Special Event - Blind Rage"

#Strength and Blindness
effect give @a[distance=0..15] minecraft:strength 25 2
effect give @a[distance=0..15] minecraft:blindness 25 0
effect clear @a[distance=0..15] minecraft:night_vision
