#Check
execute as @e[type=#tid:monster,nbt=!{HurtTime:0s},distance=0..6] at @s run function tid:gameplay/eff_inflict_weakness_effect
