# Sound effect
execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run playsound minecraft:item.bottle.fill_dragonbreath player @a ~ ~ ~ 1 2
execute unless entity @s[nbt={ActiveEffects:[{Id:25b}]}] run playsound minecraft:block.ancient_debris.break player @a ~ ~ ~ 0.5 1.4

# Potion effects
effect give @s minecraft:levitation 10 3 false
effect give @s minecraft:slow_falling 20 0 false
