#Store its motion into a scoreboard
execute store result score @s x run data get entity @s Motion[0] 1000
execute store result score @s y run data get entity @s Motion[1] 1000
execute store result score @s z run data get entity @s Motion[2] 1000

#Particles
execute if score @s counter1 matches 3.. run particle minecraft:dust 0.0781 0.2656 1.0 3
