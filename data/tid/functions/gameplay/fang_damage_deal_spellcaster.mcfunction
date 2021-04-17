#Knock monsters a bit into the air
execute as @e[type=#tid:monster,distance=0..2.5] run data modify entity @s Motion[1] set value 0.4

#Deal the damage
effect give @e[type=#tid:monster,type=#tid:undead,distance=0..2.5] instant_health 1 1
effect give @e[type=#tid:monster,type=!#tid:undead,distance=0..2.5] instant_damage 1 1
effect give @a[distance=0..1.5] instant_damage 1 0

#Kill self
kill @s
