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

#If the fireball is ready to shoot, warn the player with particles
execute if score @s counter1 matches 40.. if score @s phase matches 0 run function tid:gameplay/ai_war_pig_charge

#Shoot the fireball if fully charged
execute if score @s counter1 matches 10.. if score @s phase matches 1 run function tid:gameplay/ai_war_pig_shoot
