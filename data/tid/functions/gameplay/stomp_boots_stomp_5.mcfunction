#Particles
particle block stone ~ ~0.05 ~ 12 0.05 12 0 800
particle block coarse_dirt ~ ~0.05 ~ 12 0.05 12 0 800

#Sound Effect
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.8
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.7
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.6
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.5 0.7
playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.5 0.9

#Deal damage to nearby hostile mobs
execute as @e[type=#tid:monster,distance=0..13] run data modify entity @s Motion[1] set value 0.8
execute as @e[type=#tid:monster,distance=0..13] if entity @s[type=#tid:undead] run effect give @s instant_health 1 4
execute as @e[type=#tid:monster,distance=0..13] unless entity @s[type=#tid:undead] run effect give @s instant_damage 1 4
