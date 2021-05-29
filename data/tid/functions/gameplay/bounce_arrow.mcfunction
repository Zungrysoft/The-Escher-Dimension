#Variables:
# counter1 - How long the arrow has been alive
# counter2 - How long since the last time the arrow bounced
# counter3 - Which angle the arrow bounced last time

#Give this arrow piercing
execute unless score @s counter1 matches 1.. run data modify entity @s PierceLevel set value 10b

#Track how long it has been alive
scoreboard players add @s counter1 1
scoreboard players add @s counter2 1
execute if score @s counter1 matches 40.. run function tid:gameplay/bounce_arrow_explode

#Determine if the arrow is in the ground
scoreboard players set temp value 0
execute if entity @s[nbt={inGround:1b}] at @s run scoreboard players set temp value 1

#If it is in the ground, bounce
execute if score temp value matches 1 run function tid:gameplay/bounce_arrow_bounce

#Otherwise, track its motion
execute unless score temp value matches 1 run function tid:gameplay/bounce_arrow_track
