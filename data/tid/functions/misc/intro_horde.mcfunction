#Summon the monsters
execute at @e[type=area_effect_cloud,name="intro_monster",sort=random,limit=15] run function tid:misc/intro_horde_monster

#Play an ominous sound effect
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon ambient @s ~ ~ ~ 2 .5
execute as @a at @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 1 .5

#Update the scoreboard
scoreboard players set intro_horde_spawned value 1
