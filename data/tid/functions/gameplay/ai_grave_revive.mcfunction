#Re-summon the dead mob
execute if entity @s[tag=zombie] run summon zombie
execute if entity @s[tag=creeper] run summon creeper
execute if entity @s[tag=skeleton] run summon skeleton
execute if entity @s[tag=spider] run summon spider
execute if entity @s[tag=blaze] run summon blaze
execute if entity @s[tag=witch] run summon witch
execute if entity @s[tag=phantom] run summon phantom
execute if entity @s[tag=killer_bunny] run function tid:custom_mobs/killer_bunny

#Sound effect
playsound minecraft:entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 2

#Particles
particle minecraft:soul ~ ~.1 ~ 0.2 0 0.2 0.06 20

#Kill self
kill @s
