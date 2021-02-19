#Take the item
execute unless entity @s[gamemode=creative] run clear @s fire_charge 1

#Play a sound
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 2 1.01

#Summon the fireballs
summon minecraft:small_fireball ~ ~1 ~ {Tags:["f1","new"]}
summon minecraft:small_fireball ~ ~1 ~ {Tags:["f2","new"]}
summon minecraft:small_fireball ~ ~1 ~ {Tags:["f3","new"]}

#Set the ownership of the fireballs
data modify entity @e[type=small_fireball,tag=f1,limit=1] Owner set from entity @s UUID
data modify entity @e[type=small_fireball,tag=f2,limit=1] Owner set from entity @s UUID
data modify entity @e[type=small_fireball,tag=f3,limit=1] Owner set from entity @s UUID

#Determine which direction the player is aiming in
execute store result score temp2 value run data get entity @s Rotation[0]
execute if score temp2 value matches 1.. run scoreboard players remove temp2 value 360

#Set the fireballs' motions
#South
execute if score temp2 value matches -360..-315 as @e[tag=f1] run data merge entity @s {Motion:[0d,0d,0.5d],power:[0d,0d,0.2d]}
execute if score temp2 value matches -360..-315 as @e[tag=f2] run data merge entity @s {Motion:[0.1d,0d,0.5d],power:[0d,0d,0.2d]}
execute if score temp2 value matches -360..-315 as @e[tag=f3] run data merge entity @s {Motion:[-0.1d,0d,0.5d],power:[0d,0d,0.2d]}
#West
execute if score temp2 value matches -316..-225 as @e[tag=f1] run data merge entity @s {Motion:[-0.5d,0d,0d],power:[-0.2d,0d,0d]}
execute if score temp2 value matches -316..-225 as @e[tag=f2] run data merge entity @s {Motion:[-0.5d,0d,0.1d],power:[-0.2d,0d,0d]}
execute if score temp2 value matches -316..-225 as @e[tag=f3] run data merge entity @s {Motion:[-0.5d,0d,-0.1d],power:[-0.2d,0d,0d]}
#North
execute if score temp2 value matches -226..-135 as @e[tag=f1] run data merge entity @s {Motion:[0d,0d,-0.5d],power:[0d,0d,-0.2d]}
execute if score temp2 value matches -226..-135 as @e[tag=f2] run data merge entity @s {Motion:[0.1d,0d,-0.5d],power:[0d,0d,-0.2d]}
execute if score temp2 value matches -226..-135 as @e[tag=f3] run data merge entity @s {Motion:[-0.1d,0d,-0.5d],power:[0d,0d,-0.2d]}
#East
execute if score temp2 value matches -136..-46 as @e[tag=f1] run data merge entity @s {Motion:[0.5d,0d,0d],power:[0.2d,0d,0d]}
execute if score temp2 value matches -136..-46 as @e[tag=f2] run data merge entity @s {Motion:[0.5d,0d,0.1d],power:[0.2d,0d,0d]}
execute if score temp2 value matches -136..-46 as @e[tag=f3] run data merge entity @s {Motion:[0.5d,0d,-0.1d],power:[0.2d,0d,0d]}
#South
execute if score temp2 value matches -46..0 as @e[tag=f1] run data merge entity @s {Motion:[0d,0d,0.5d],power:[0d,0d,0.2d]}
execute if score temp2 value matches -46..0 as @e[tag=f2] run data merge entity @s {Motion:[0.1d,0d,0.5d],power:[0d,0d,0.2d]}
execute if score temp2 value matches -46..0 as @e[tag=f3] run data merge entity @s {Motion:[-0.1d,0d,0.5d],power:[0d,0d,0.2d]}

#Remove the tags
tag @e[tag=f1] remove f1
tag @e[tag=f2] remove f2
tag @e[tag=f3] remove f3
tag @e[tag=new] remove new
