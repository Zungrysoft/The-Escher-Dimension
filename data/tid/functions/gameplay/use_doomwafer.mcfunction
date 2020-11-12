execute at @e[type=#tid:monster,distance=0..25] run particle minecraft:item cookie ~ ~1 ~ 0.5 0.5 0.5 0.05 50
kill @e[type=#tid:monster,distance=0..25]
advancement revoke @s only tid:misc/use_doomwafer
playsound minecraft:entity.dragon_fireball.explode ambient @a ~ ~ ~ 2 2