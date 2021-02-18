#Edit the fireball phase and reset charge time
scoreboard players set @s phase 1
scoreboard players set @s counter1 0

#Play sound effects
playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 1 1.6
execute if entity @s[tag=mutant] run playsound minecraft:block.vine.step hostile @a ~ ~ ~ 1 1.2

#Particles
execute unless entity @s[tag=mutant] run particle minecraft:flame ~ ~1 ~ 0.4 0.8 0.4 0 12
execute if entity @s[tag=mutant] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.4 0.8 0.4 0 12

#Pause to shoot
effect give @s minecraft:slowness 1 3 true
