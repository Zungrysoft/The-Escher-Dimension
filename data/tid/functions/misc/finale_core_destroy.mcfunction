#Particle effects
particle soul_fire_flame ~ ~0.5 ~ 0.5 0.5 0.5 0 50

#Sound effect 
playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 2 2
playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 2 1.6

#Reduce health
scoreboard players remove boss_health value 1
execute if score boss_health value matches 5 run bossbar set minecraft:boss value 5
execute if score boss_health value matches 4 run bossbar set minecraft:boss value 4
execute if score boss_health value matches 3 run bossbar set minecraft:boss value 3
execute if score boss_health value matches 2 run bossbar set minecraft:boss value 2
execute if score boss_health value matches 1 run bossbar set minecraft:boss value 1
execute if score boss_health value matches 0 run function tid:general/victory

#Kill marker
kill @s
