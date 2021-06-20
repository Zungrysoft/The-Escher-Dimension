#Play a sound
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 2 1.01

#Summon the fireballs
summon minecraft:small_fireball ~ ~1 ~ {Tags:["f1","new"]}
summon minecraft:small_fireball ~ ~1 ~ {Tags:["f2","new"]}
summon minecraft:small_fireball ~ ~1 ~ {Tags:["f3","new"]}
summon minecraft:small_fireball ~ ~1 ~ {Tags:["f4","new"]}

#Set the ownership of the fireballs
data modify entity @e[type=small_fireball,tag=f1,limit=1] Owner set from entity @s UUID
data modify entity @e[type=small_fireball,tag=f2,limit=1] Owner set from entity @s UUID
data modify entity @e[type=small_fireball,tag=f3,limit=1] Owner set from entity @s UUID
data modify entity @e[type=small_fireball,tag=f4,limit=1] Owner set from entity @s UUID

#Set the fireballs' motions
execute as @e[tag=f1] run data merge entity @s {Motion:[0d,0d,0.2d],power:[0d,0d,0.2d]}
execute as @e[tag=f2] run data merge entity @s {Motion:[0d,0d,-0.2d],power:[0d,0d,-0.2d]}
execute as @e[tag=f3] run data merge entity @s {Motion:[0.2d,0d,0d],power:[0.2d,0d,0d]}
execute as @e[tag=f4] run data merge entity @s {Motion:[-0.2d,0d,0d],power:[-0.2d,0d,0d]}

#Remove the tags
tag @e[tag=f1] remove f1
tag @e[tag=f2] remove f2
tag @e[tag=f3] remove f3
tag @e[tag=f4] remove f4
tag @e[tag=new] remove new

#Remove unluck
effect clear @s unluck
