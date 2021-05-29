#Particles
particle block stone ~ ~0.05 ~ 8 0.05 8 0 400
particle block coarse_dirt ~ ~0.05 ~ 8 0.05 8 0 400

#Sound Effect
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.8
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.7
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.6
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.5

#Deal damage to nearby hostile mobs
execute as @e[type=#tid:monster,distance=0..9] run data modify entity @s Motion[1] set value 0.7
execute as @e[type=#tid:monster,distance=0..9] if entity @s[type=#tid:undead] run effect give @s instant_health 1 3
execute as @e[type=#tid:monster,distance=0..9] unless entity @s[type=#tid:undead] run effect give @s instant_damage 1 3
