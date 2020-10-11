#Reset score
scoreboard players set @s counter1 0

#Play a sound
playsound item.firecharge.use hostile @a

#Shoot the four fireballs
summon minecraft:small_fireball ~ ~1.2 ~ {power:[0d,0d,0.1d],Tags:["new"]}
data modify entity @e[tag=new,limit=1] Owner set from entity @s UUID
tag @e[tag=new,limit=1] remove new

summon minecraft:small_fireball ~ ~1.2 ~ {power:[0d,0d,-0.1d],Tags:["new"]}
data modify entity @e[tag=new,limit=1] Owner set from entity @s UUID
tag @e[tag=new,limit=1] remove new

summon minecraft:small_fireball ~ ~1.2 ~ {power:[0.1d,0d,0d],Tags:["new"]}
data modify entity @e[tag=new,limit=1] Owner set from entity @s UUID
tag @e[tag=new,limit=1] remove new

summon minecraft:small_fireball ~ ~1.2 ~ {power:[-0.1d,0d,0d],Tags:["new"]}
data modify entity @e[tag=new,limit=1] Owner set from entity @s UUID
tag @e[tag=new,limit=1] remove new

