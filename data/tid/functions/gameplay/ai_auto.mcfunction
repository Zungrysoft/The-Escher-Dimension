#If the mob has been damaged since the previous frame, play a hurt sound
execute store result score temp value run data get entity @s Health
execute if entity @s[tag=init] unless score @s up = temp value run playsound minecraft:entity.iron_golem.damage hostile @a
execute store result score @s up run data get entity @s Health

#Handle idle sounds
scoreboard players remove @s counter1 1
execute if score @s counter1 matches ..0 run function tid:gameplay/ai_auto_idle

#Init
tag @s add init
