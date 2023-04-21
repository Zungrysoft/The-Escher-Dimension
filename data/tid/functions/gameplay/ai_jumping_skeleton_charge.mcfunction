#Edit the ability phase and reset charge time
scoreboard players set @s phase 1
scoreboard players set @s counter1 0

#Play sound effects
playsound minecraft:item.armor.equip_leather hostile @a ~ ~ ~ 1 1.6

#Particles
particle minecraft:flame ~ ~1 ~ 0.4 0.8 0.4 0 12

#Pause before activating the ability
effect give @s minecraft:slowness 1 3 true

#============================
#Precalculate player position
#============================

#Store the coords of the target player
#But we have to figure out who the target player is
execute as @p at @s run function tid:gameplay/ai_jumping_skeleton_target_run

#Store the coords of the skeleton
#They are stored as a factor of 100 since scoreboards can only hold integers
#This allows us to get more decimal places
execute store result score x2 value run data get entity @s Pos[0] 100
execute store result score z2 value run data get entity @s Pos[2] 100

#Get the coord deltas
scoreboard players operation x1 value -= x2 value
scoreboard players operation z1 value -= z2 value

#Get the squares of the deltas
scoreboard players operation xs value = x1 value
scoreboard players operation zs value = z1 value
scoreboard players operation xs value *= xs value
scoreboard players operation zs value *= zs value

#Sum the squares into sqrt
scoreboard players operation sqrt value = xs value
scoreboard players operation sqrt value += zs value

#Take the square root
function tid:general/sqrt

#Scale the vector by 100 so we don't lose precision on the next step
scoreboard players set calc value 100
scoreboard players operation x1 value *= calc value
scoreboard players operation z1 value *= calc value

#Scale the delta vector by its length to turn it into a unit vector (length 100 instead of 1)
scoreboard players operation x1 value /= sqrt value
scoreboard players operation z1 value /= sqrt value

#Scale the delta vector by the skeletons' jump speed
scoreboard players set calc2 value 160
scoreboard players operation x1 value *= calc2 value
scoreboard players operation z1 value *= calc2 value
scoreboard players operation x1 value /= calc value
scoreboard players operation z1 value /= calc value

#Store this data into the skeleton
scoreboard players operation @s dx = x1 value
scoreboard players operation @s dz = z1 value
