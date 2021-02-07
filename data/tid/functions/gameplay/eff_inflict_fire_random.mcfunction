#Check
execute as @e[type=#tid:monster,distance=0..10,limit=1,sort=random] at @s run function tid:gameplay/eff_inflict_fire_effect
