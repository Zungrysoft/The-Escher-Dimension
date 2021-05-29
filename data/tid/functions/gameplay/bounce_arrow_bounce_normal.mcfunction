#This function tries to guess what angle the arrow bounced at
scoreboard players set normal value 1

#First, store the arrow's position
execute store result score tx value run data get entity @s Pos[0] 1000
#execute store result score ty value run data get entity @s Pos[1] 1000
execute store result score tz value run data get entity @s Pos[2] 1000

#Mod these values by 1000 to get the values within the blocks
scoreboard players set calc value 1000
scoreboard players operation tx value %= calc value
#scoreboard players operation ty value %= calc value
scoreboard players operation tz value %= calc value

#Estimate the direction using these values
execute if score tx value matches ..60 run scoreboard players set normal value 0
execute if score tx value matches 940.. run scoreboard players set normal value 0

execute if score tz value matches ..60 run scoreboard players set normal value 2
execute if score tz value matches 940.. run scoreboard players set normal value 2

#Skip an attempt if we're trying y
execute if score normal value matches 1 run scoreboard players add @s counter3 1

#Let's try it
execute if score normal value matches 0 run function tid:gameplay/bounce_arrow_bounce_x
execute if score normal value matches 1 run function tid:gameplay/bounce_arrow_bounce_y
execute if score normal value matches 2 run function tid:gameplay/bounce_arrow_bounce_z
