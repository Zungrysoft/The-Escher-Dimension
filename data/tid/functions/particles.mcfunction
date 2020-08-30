schedule function tid:particles .4s replace

execute as @e[type=area_effect_cloud,tag=haunted] at @s if entity @p[distance=0..20] run function tid:misc/haunted_chest_particles

#Particle effect on dyes
execute as @e[type=item,nbt={Item:{id:"minecraft:white_dye"}}] at @s run particle dust 1.0 1.0 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:orange_dye"}}] at @s run particle dust 1.0 0.5 0.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:magenta_dye"}}] at @s run particle dust 1.0 0.0 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:light_blue_dye"}}] at @s run particle dust 0.5 0.5 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:yellow_dye"}}] at @s run particle dust 1.0 1.0 0.1 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}}] at @s run particle dust 0.7 1.0 0.3 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:pink_dye"}}] at @s run particle dust 1.0 0.8 0.8 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:gray_dye"}}] at @s run particle dust 0.3 0.3 0.3 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:light_gray_dye"}}] at @s run particle dust 0.8 0.8 0.8 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:cyan_dye"}}] at @s run particle dust 0.0 0.6 0.7 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_dye"}}] at @s run particle dust 0.7 0.0 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_dye"}}] at @s run particle dust 0.0 0.0 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_dye"}}] at @s run particle dust 0.5 0.3 0.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:green_dye"}}] at @s run particle dust 0.0 0.7 0.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}] at @s run particle dust 1.0 0.0 0.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:black_dye"}}] at @s run particle dust 0.0 0.0 0.0 2.0 ~ ~.25 ~

execute as @e[type=item,nbt={Item:{id:"minecraft:white_wool"}}] at @s run particle dust 1.0 1.0 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:orange_wool"}}] at @s run particle dust 1.0 0.5 0.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:magenta_wool"}}] at @s run particle dust 1.0 0.0 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:light_blue_wool"}}] at @s run particle dust 0.5 0.5 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:yellow_wool"}}] at @s run particle dust 1.0 1.0 0.1 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_wool"}}] at @s run particle dust 0.7 1.0 0.3 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:pink_wool"}}] at @s run particle dust 1.0 0.8 0.8 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:gray_wool"}}] at @s run particle dust 0.3 0.3 0.3 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:light_gray_wool"}}] at @s run particle dust 0.8 0.8 0.8 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:cyan_wool"}}] at @s run particle dust 0.0 0.6 0.7 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_wool"}}] at @s run particle dust 0.7 0.0 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_wool"}}] at @s run particle dust 0.0 0.0 1.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:brown_wool"}}] at @s run particle dust 0.5 0.3 0.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:green_wool"}}] at @s run particle dust 0.0 0.7 0.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}] at @s run particle dust 1.0 0.0 0.0 2.0 ~ ~.25 ~
execute as @e[type=item,nbt={Item:{id:"minecraft:black_wool"}}] at @s run particle dust 0.0 0.0 0.0 2.0 ~ ~.25 ~