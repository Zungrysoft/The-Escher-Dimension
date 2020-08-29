#Store the color of the nearest district for reference
execute store result score @s tries run data get entity @e[tag=sin_district,limit=1,sort=nearest] Color

#Pick a random number between 0 and 31 for choosing which mob to spawn
execute if predicate tid:random_50 run scoreboard players add @s counter1 1
execute if predicate tid:random_50 run scoreboard players add @s counter1 2
execute if predicate tid:random_50 run scoreboard players add @s counter1 4
execute if predicate tid:random_50 run scoreboard players add @s counter1 8
execute if predicate tid:random_50 run scoreboard players add @s counter1 16

#Figure out which district the mob is in
execute if score @s tries matches 0 run function tid:gameplay/district/white
execute if score @s tries matches 1 run function tid:gameplay/district/orange
execute if score @s tries matches 2 run function tid:gameplay/district/magenta
execute if score @s tries matches 3 run function tid:gameplay/district/light_blue
execute if score @s tries matches 4 run function tid:gameplay/district/yellow
execute if score @s tries matches 5 run function tid:gameplay/district/lime
execute if score @s tries matches 6 run function tid:gameplay/district/pink
execute if score @s tries matches 7 run function tid:gameplay/district/gray
execute if score @s tries matches 8 run function tid:gameplay/district/light_gray
execute if score @s tries matches 9 run function tid:gameplay/district/cyan
execute if score @s tries matches 10 run function tid:gameplay/district/purple
execute if score @s tries matches 11 run function tid:gameplay/district/blue
execute if score @s tries matches 12 run function tid:gameplay/district/brown
execute if score @s tries matches 13 run function tid:gameplay/district/green
execute if score @s tries matches 14 run function tid:gameplay/district/red
execute if score @s tries matches 15 run function tid:gameplay/district/black
execute if score @s tries matches 16 run function tid:gameplay/district/tnt

#Kill the mob
tp @s 1 -100 1