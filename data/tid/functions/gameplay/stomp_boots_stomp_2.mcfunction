#Particles
particle block stone ~ ~0.05 ~ 4 0.05 4 0 70
particle block coarse_dirt ~ ~0.05 ~ 4 0.05 4 0 70

#Sound Effect
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.8
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.7

#Deal damage to nearby hostile mobs
execute as @e[type=#tid:monster,distance=0..5] run data modify entity @s Motion[1] set value 0.5
execute as @e[type=#tid:monster,distance=0..5] if entity @s[type=#tid:undead] run effect give @s instant_health 1 1
execute as @e[type=#tid:monster,distance=0..5] unless entity @s[type=#tid:undead] run effect give @s instant_damage 1 1
