#Summon the monsters
execute at @e[type=area_effect_cloud,name="intro_monster",sort=random,limit=15] run function tid:misc/intro_horde_monster

#Play an ominous sound effect
say HORDE

#Update the scoreboard
scoreboard players set intro_horde_spawned value 1
