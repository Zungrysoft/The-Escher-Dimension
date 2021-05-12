#Reduce health
execute store result score temp2 value run data get entity @s Health 100
scoreboard players remove temp2 value 500
execute if score temp2 value matches ..0 run kill @s
execute store result entity @s Health float 0.01 run scoreboard players get temp2 value

#Sound effect
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 2
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1.8

#Particles
particle minecraft:dust 0.8 0 0 2 ~ ~1 ~ 0.5 1 0.5 0 6
particle minecraft:dust 0.7 0.7 0.7 2 ~ ~1 ~ 0.5 1 0.5 0 2
particle minecraft:dust 0.8 0.8 0.8 2 ~ ~1 ~ 0.5 1 0.5 0 2
particle minecraft:dust 0.9 0.9 0.9 2 ~ ~1 ~ 0.5 1 0.5 0 2
