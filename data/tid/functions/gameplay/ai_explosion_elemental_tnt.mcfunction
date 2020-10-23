#See if there are any headless Explosion Elementals alive nearby
scoreboard players set temp value 1
execute unless entity @e[type=zombie,tag=explosion_elemental,tag=!tnt,distance=0..15] run scoreboard players set temp value 0

#If not, poof out of existence, since the player must have killed this tnt's parent
execute if score temp value matches 0 run kill @s
execute if score temp value matches 0 run playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 1 2
execute if score temp value matches 0 run particle minecraft:cloud ~ ~0.5 ~ 0.5 0.5 0.5 0 30