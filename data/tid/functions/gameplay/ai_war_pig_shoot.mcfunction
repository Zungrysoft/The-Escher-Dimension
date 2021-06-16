#Edit the fireball phase and reset charge time
scoreboard players set @s phase 0
scoreboard players set @s counter1 0

#Mutant reset time
execute if entity @s[tag=mutant] run scoreboard players set @s phase 1
execute if entity @s[tag=mutant] run scoreboard players set @s counter1 2

#Sound effect
playsound minecraft:item.firecharge.use hostile @a ~ ~ ~ 0.8 1.2
playsound minecraft:item.crossbow.shoot hostile @a ~ ~ ~ 1.2 0.7

#Store the coords of the target player
#But we have to figure out who the target player is
execute store result score temp value run data get entity @s AngryAt[0]
execute as @a at @s run function tid:gameplay/ai_war_pig_target

#Store the coords of the war pig
#They are stored as a factor of 100 since scoreboards can only hold integers
#This allows us to get more decimal places
execute store result score x2 value run data get entity @s Pos[0] 100
execute store result score y2 value run data get entity @s Pos[1] 100
execute store result score z2 value run data get entity @s Pos[2] 100

#Get the coord deltas
scoreboard players operation x1 value -= x2 value
scoreboard players operation y1 value -= y2 value
scoreboard players operation z1 value -= z2 value

#Get the squares of the deltas
scoreboard players operation xs value = x1 value
scoreboard players operation ys value = y1 value
scoreboard players operation zs value = z1 value
scoreboard players operation xs value *= xs value
scoreboard players operation ys value *= ys value
scoreboard players operation zs value *= zs value

#Sum the squares into sqrt
scoreboard players operation sqrt value = xs value
scoreboard players operation sqrt value += ys value
scoreboard players operation sqrt value += zs value

#Take the square root
function tid:general/sqrt

#Scale the vector by 100 so we don't lose precision on the next step
scoreboard players set calc value 100
scoreboard players operation x1 value *= calc value
scoreboard players operation y1 value *= calc value
scoreboard players operation z1 value *= calc value

#Scale the delta vector by its length to turn it into a unit vector (length 100 instead of 1)
scoreboard players operation x1 value /= sqrt value
scoreboard players operation y1 value /= sqrt value
scoreboard players operation z1 value /= sqrt value

#Scale the delta vector by the war pigs' projectile speed
scoreboard players set calc2 value 60
scoreboard players operation x1 value *= calc2 value
scoreboard players operation y1 value *= calc2 value
scoreboard players operation z1 value *= calc2 value
scoreboard players operation x1 value /= calc value
scoreboard players operation y1 value /= calc value
scoreboard players operation z1 value /= calc value

#Set up the data to merge into the fireball
data modify storage temp fireball.Owner set from entity @s UUID
data modify storage temp fireball.Motion set value [0.,0.,0.]
execute store result storage temp fireball.Motion[0] double .01 run scoreboard players get x1 value
execute store result storage temp fireball.Motion[1] double .01 run scoreboard players get y1 value
execute store result storage temp fireball.Motion[2] double .01 run scoreboard players get z1 value

#Summon the fireball and merge the data into it
summon arrow ~ ~1.4 ~ {Motion:[0d,0d,0d],NoGravity:1,PierceLevel:50,Tags:["war_pig_fireball","new"]}
data modify entity @e[type=arrow,limit=1,tag=new] {} merge from storage temp fireball

#Set the fireball's damage
execute if entity @s[tag=power_low] run data modify entity @e[type=arrow,limit=1,tag=new] damage set value 9
execute if entity @s[tag=power_medium] run data modify entity @e[type=arrow,limit=1,tag=new] damage set value 14
execute if entity @s[tag=power_high] run data modify entity @e[type=arrow,limit=1,tag=new] damage set value 22
execute if entity @s[tag=power_super] run data modify entity @e[type=arrow,limit=1,tag=new] damage set value 42

#If this is a mutant war pig, edit the fireball to mutant as well
execute if entity @s[tag=mutant] run tag @e[type=arrow,limit=1,tag=new] add mutant

#Cleanup
data remove storage temp fireball
tag @e[type=arrow,limit=1,tag=new] remove new

#Can I please go back to a programming language where this kind of thing can be done in like six lines of code?
