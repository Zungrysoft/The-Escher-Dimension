#Use the bounce timer to determine what angle this arrow should try to bounce at
execute if score @s counter2 matches ..1 run scoreboard players add @s counter3 1
execute unless score @s counter2 matches ..1 run scoreboard players set @s counter3 0

#Bounce in the most likely direction
execute if score @s counter3 matches 0 run function tid:gameplay/bounce_arrow_bounce_normal

#Bounce in the y direction
execute if score @s counter3 matches 1 run function tid:gameplay/bounce_arrow_bounce_y

#Bounce in the x direction
execute if score @s counter3 matches 2 run function tid:gameplay/bounce_arrow_bounce_x

#Bounce in the z direction
execute if score @s counter3 matches 3 run function tid:gameplay/bounce_arrow_bounce_z

#If this arrow has tried all three directions and failed, just put it out of its misery
execute if score @s counter3 matches 4.. run function tid:gameplay/arrow_fizzle

#Set it to no longer be in the ground
data modify entity @s inGround set value 0b

#Reset piece level
data modify entity @s PierceLevel set value 10b

#Increase the damage stat
execute unless score @s counter2 matches ..1 store result entity @s damage double 2 run data get entity @s damage

#Track number of bounces for the advancement
execute unless score @s counter2 matches ..1 run scoreboard players add @s counter4 1
execute if score @s counter4 matches 3.. run tag @s add bouncy

#Reset the bounce timer
scoreboard players set @s counter2 0
