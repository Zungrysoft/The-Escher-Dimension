#If the mob has been damaged since the previous frame, summon a farie
execute store result score temp value run data get entity @s Health
execute unless score @s up = temp value if score @s up matches 1.. positioned ~ ~1 ~ run function tid:custom_mobs/farie
execute store result score @s up run data get entity @s Health
