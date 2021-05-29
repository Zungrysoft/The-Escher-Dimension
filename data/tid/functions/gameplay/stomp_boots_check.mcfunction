#Determine if the player is on the ground
execute store result score temp value run data get entity @s OnGround

#If they are on the ground and were not before, do a stomp
execute if score @s on_ground matches 0 if score temp value matches 1 run function tid:gameplay/stomp_boots_effect

#If they are not currently on the ground, update the fall velocity value
execute if score temp value matches 0 store result score @s fall_velocity run data get entity @s Motion[1] -1000

#Update the player's on ground value
scoreboard players operation @s on_ground = temp value
