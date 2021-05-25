#Fly up into the air
data modify entity @s Motion[0] set value 0.0
data modify entity @s Motion[1] set value 0.6
data modify entity @s Motion[2] set value 0.0

#Take damage
#The potion effect is applied so the monster will play hurt sounds and other stuff
effect give @s[type=#tid:undead] instant_health 1 0
effect give @s[type=!#tid:undead] instant_damage 1 0

#Slowness
effect give @s slowness 6 0

#Sound effect
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.8
playsound minecraft:block.ancient_debris.break player @a ~ ~ ~ 0.5 0.6
