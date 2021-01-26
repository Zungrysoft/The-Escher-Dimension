data modify storage temp arrow set from entity @s
data modify storage temp small_fireball.Owner set from storage temp arrow.Owner
data modify storage temp small_fireball.Rotation set from storage temp arrow.Rotation
data modify storage temp small_fireball.Motion set value [0.,0.,0.]
execute store result storage temp small_fireball.Motion[0] double .000008 run data get storage temp arrow.Motion[0] 10000
execute store result storage temp small_fireball.Motion[1] double .000006 run data get storage temp arrow.Motion[1] 10000
execute store result storage temp small_fireball.Motion[2] double .000008 run data get storage temp arrow.Motion[2] 10000
data remove storage temp arrow

#Summon the fireball and 
summon small_fireball ~ ~ ~ {Tags:["oxidation_fireball","new"]}
data modify entity @e[type=small_fireball,limit=1,tag=new,distance=0] {} merge from storage temp small_fireball
tag @e[type=small_fireball,distance=0] remove new
data remove storage temp small_fireball

#Play a sound effect
playsound item.firecharge.use hostile @a

#Remove the source arrow
tp @s 0 -100 0
kill @s
