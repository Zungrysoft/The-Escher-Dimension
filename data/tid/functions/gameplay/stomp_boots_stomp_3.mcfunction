#Particles
particle block stone ~ ~0.05 ~ 6 0.05 6 0 200
particle block coarse_dirt ~ ~0.05 ~ 6 0.05 6 0 200

#Sound Effect
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.8
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.7
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.6

#Deal damage to nearby hostile mobs
execute as @e[type=#tid:monster,distance=0..7] run data modify entity @s Motion[1] set value 0.6
execute as @e[type=#tid:monster,distance=0..7] if entity @s[type=#tid:undead] run effect give @s instant_health 1 2
execute as @e[type=#tid:monster,distance=0..7] unless entity @s[type=#tid:undead] run effect give @s instant_damage 1 2
