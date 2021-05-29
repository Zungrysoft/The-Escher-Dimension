#Particles
particle block stone ~ ~0.05 ~ 1 0.05 1 0 14
particle block coarse_dirt ~ ~0.05 ~ 1 0.05 1 0 17

#Sound Effect
playsound minecraft:block.netherite_block.break player @a ~ ~ ~ 1 0.8

#Deal damage to nearby hostile mobs
execute as @e[type=#tid:monster,distance=0..2] run data modify entity @s Motion[1] set value 0.4
execute as @e[type=#tid:monster,distance=0..2] if entity @s[type=#tid:undead] run effect give @s instant_health 1 0
execute as @e[type=#tid:monster,distance=0..2] unless entity @s[type=#tid:undead] run effect give @s instant_damage 1 0
