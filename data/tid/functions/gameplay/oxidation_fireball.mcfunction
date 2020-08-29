#execute store result entity @s Motion[0] double 1.01 run data get entity @s Motion[0]
#execute store result entity @s Motion[1] double 1.01 run data get entity @s Motion[1]
#execute store result entity @s Motion[2] double 1.01 run data get entity @s Motion[2]

data modify storage temp small_fireball set from entity @s
execute store result storage temp small_fireball.Motion[0] double .00011 run data get storage temp small_fireball.Motion[0] 10000
execute store result storage temp small_fireball.Motion[1] double .00011 run data get storage temp small_fireball.Motion[1] 10000
execute store result storage temp small_fireball.Motion[2] double .00011 run data get storage temp small_fireball.Motion[2] 10000

data modify entity @s {} merge from storage temp small_fireball
data remove storage temp small_fireball

#data get entity @e[type=small_fireball,limit=1,sort=nearest] power[0]