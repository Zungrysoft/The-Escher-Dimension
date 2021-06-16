#Deal damage to all mobs within a couple of blocks
effect give @e[type=#tid:monster,type=#tid:undead,distance=0..3] instant_health 1 2
effect give @e[type=#tid:monster,type=!#tid:undead,distance=0..3] instant_damage 1 2

#Particles
particle minecraft:dust 1 1 0.2 2 ~ ~ ~ 1 1 1 0.4 25

#Sound effects
playsound minecraft:entity.vex.hurt player @a ~ ~ ~ 2 2
playsound minecraft:block.basalt.break player @a ~ ~ ~ 2 0

#Check for advancement
execute store result score temp value if entity @e[distance=0..3,type=#tid:monster]
execute if score temp value matches 8.. run advancement grant @p only tid:layer_2/kill_with_zapper_arrow

#Self-damage
effect give @a[distance=0..5] instant_damage 1 0
playsound minecraft:entity.player.hurt_sweet_berry_bush player @a[distance=0..5] ~ ~ ~ 0.7 0.6

#Kill self
kill @s
