#If the mob has been damaged since the previous frame, reset the fireball time
execute store result score temp value run data get entity @s Health
execute unless score @s up = temp value run scoreboard players set @s counter1 0
execute unless score @s up = temp value run scoreboard players set @s phase 0
execute store result score @s up run data get entity @s Health

#Count up the attack time
scoreboard players add @s counter1 1

#If the attack is ready to shoot, first make sure there aren't too many broodchildren nearby
scoreboard players set children_nearby value 0
execute if score @s counter1 matches 60.. unless score @s phase matches 1 store result score children_nearby value if entity @e[type=minecraft:silverfish,tag=broodchild,distance=0..50]
execute if score children_nearby value matches 7.. run scoreboard players set @s counter1 0

#If the attack is ready to shoot, do a raytrace to make sure we can actually see the target
scoreboard players set raytrace_result value 0
execute if score @s counter1 matches 60.. run function tid:gameplay/raytrace_nearest
execute if score raytrace_result value matches 1 run scoreboard players set @s counter1 0

#If the attack is ready to shoot, warn the player with particles
execute if score @s counter1 matches 60.. unless score @s phase matches 1 run function tid:gameplay/ai_broodmother_charge

#Launch the child if fully charged
execute if score @s counter1 matches 10.. if score @s phase matches 1 run function tid:gameplay/ai_broodmother_launch
