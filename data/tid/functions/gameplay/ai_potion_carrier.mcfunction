#Schedule this function every one second
schedule function tid:gameplay/ai_potion_carrier 1s replace

#For each potion carrier, search for nearby mobs to apply the effect to
execute as @e[tag=potion_carrier_swiftness] at @s as @e[type=#tid:potion_appliable,distance=0.5..8,sort=random,limit=10] run function tid:gameplay/ai_potion_carrier_swiftness
execute as @e[tag=potion_carrier_strength] at @s as @e[type=#tid:potion_appliable,distance=0.5..8,sort=random,limit=10] run function tid:gameplay/ai_potion_carrier_strength
execute as @e[tag=potion_carrier_healing] at @s as @e[type=#tid:potion_appliable,distance=0.5..8,sort=random,limit=1] run function tid:gameplay/ai_potion_carrier_healing
