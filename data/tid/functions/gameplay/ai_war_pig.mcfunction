#If it is not angry at anything, find a player to attack
execute if entity @s[nbt={AngerTime:0}] run function tid:gameplay/ai_war_pig_anger

#If it is not angry at anything, reset the fireball time
execute if entity @s[nbt={AngerTime:0}] run scoreboard players set @s counter1 0
execute if entity @s[nbt={AngerTime:0}] run scoreboard players set @s phase 0

#If the mob has been damaged since the previous frame, reset the fireball time
execute store result score temp value run data get entity @s Health
execute unless score @s up = temp value run scoreboard players set @s counter1 0
execute unless score @s up = temp value run scoreboard players set @s phase 0
execute store result score @s up run data get entity @s Health

#Count up the fireball time
scoreboard players add @s counter1 1

# If the attack is ready to shoot, do a raytrace to make sure we can actually see the target
# If this is a mutant war pig, also check before firing each shot. If the player is behind cover, have a random chance to stop firing
scoreboard players set should_raytrace value 0
execute if score @s counter1 matches 40.. if score @s phase matches 0 run scoreboard players set should_raytrace value 1
execute if score @s counter1 matches 10.. if score @s phase matches 1 if entity @s[tag=mutant] if predicate tid:random_25 run scoreboard players set should_raytrace value 1
execute if score should_raytrace value matches 1 run function tid:gameplay/raytrace_target
execute if score should_raytrace value matches 1 unless score raytrace_result value matches 2 run scoreboard players set @s counter1 0
execute if score should_raytrace value matches 1 unless score raytrace_result value matches 2 run scoreboard players set @s phase 0

#If the fireball is ready to shoot, warn the player with particles
execute if score @s counter1 matches 40.. if score @s phase matches 0 run function tid:gameplay/ai_war_pig_charge

#Shoot the fireball if fully charged
execute if score @s counter1 matches 10.. if score @s phase matches 1 run function tid:gameplay/ai_war_pig_shoot
