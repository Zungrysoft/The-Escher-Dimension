#Track time alive
scoreboard players add @s counter1 1

#Particle trail
particle minecraft:dust 1 1 0.2 2

#If alive for long enough (and not hit a wall), it zaps everything near it
execute if score @s[nbt={inGround:0b}] counter1 matches 7.. run function tid:gameplay/zapper_arrow_zap

#If it hits a wall, it fizzles out
execute if entity @s[nbt={inGround:1b}] run playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 0.08 2
execute if entity @s[nbt={inGround:1b}] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0 3
execute if entity @s[nbt={inGround:1b}] run kill @s
