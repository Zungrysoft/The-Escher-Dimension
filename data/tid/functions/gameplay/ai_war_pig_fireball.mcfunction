#This function handles the projectile fired by the war pig

#Fizzle the fireball out if it's travelled too long
scoreboard players add @s counter1 1
execute if score @s counter1 matches 40.. run function tid:gameplay/fireball_fizzle

#Fizzle the fireball out if it hits a wall
execute if entity @s[nbt={inGround:1b}] run function tid:gameplay/fireball_fizzle
