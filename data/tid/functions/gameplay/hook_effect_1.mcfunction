#Fly up into the air
data modify entity @s Motion[0] set value 0.0
data modify entity @s Motion[1] set value 0.6
data modify entity @s Motion[2] set value 0.0

#Reduce health
execute store result score temp2 value run data get entity @s Health 100
scoreboard players remove temp2 value 300
execute if score temp2 value matches ..100 run scoreboard players set temp2 value 100
execute store result entity @s Health float 0.01 run scoreboard players get temp2 value

#Take damage
#The potion effect is applied so the monster will play hurt sounds and other stuff
effect give @s[type=#tid:undead] instant_health 1 0
effect give @s[type=!#tid:undead] instant_damage 1 0
