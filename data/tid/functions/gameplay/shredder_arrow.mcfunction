#Add the damage and piercing if it hasn't been done yet
execute unless entity @s[tag=powered] store result score temp value run data get entity @s powered
execute unless entity @s[tag=powered] store result entity @s damage int 1 run scoreboard players add temp value 6
execute unless entity @s[tag=powered] run tag @s add powered
execute unless entity @s[tag=powered] run data modify entity @s PierceLevel set value 10

#Make it fizzle if it goes too far
scoreboard players add @s counter1 1
execute if score @s counter1 matches 3.. run function tid:gameplay/arrow_fizzle
