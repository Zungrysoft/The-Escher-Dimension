#Particle effects
particle soul_fire_flame ~ ~0.5 ~ 0.5 0.5 0.5 0 50

#Sound effect 
playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 2 2
playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 2 1.6

#Reduce health to the number of remaining cores
execute store result score boss_health value if entity @e[type=area_effect_cloud,name="finale_boss_core"]
scoreboard players remove boss_health value 1
execute if score boss_health value matches 6 run bossbar set minecraft:boss value 6
execute if score boss_health value matches 5 run bossbar set minecraft:boss value 5
execute if score boss_health value matches 4 run bossbar set minecraft:boss value 4
execute if score boss_health value matches 3 run bossbar set minecraft:boss value 3
execute if score boss_health value matches 2 run bossbar set minecraft:boss value 2
execute if score boss_health value matches 1 run bossbar set minecraft:boss value 1
execute if score boss_health value matches 0 run function tid:general/victory

#Remove the sea lantern
fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 obsidian replace sea_lantern

#Kill marker
kill @s
