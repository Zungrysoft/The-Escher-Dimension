#Count the tree segment
scoreboard players remove tree_length value 1

#Check if the tree has rammed into something
execute if score tree_status value matches 0 unless block ~ ~ ~ air run scoreboard players set tree_status 2
execute if score tree_status value matches 0 unless block ~2 ~ ~ air run scoreboard players set tree_status 2
execute if score tree_status value matches 0 unless block ~-2 ~ ~ air run scoreboard players set tree_status 2
execute if score tree_status value matches 0 unless block ~ ~ ~2 air run scoreboard players set tree_status 2
execute if score tree_status value matches 0 unless block ~ ~ ~-2 air run scoreboard players set tree_status 2
execute if score tree_status value matches 0 unless block ~ ~2 ~ air run scoreboard players set tree_status 2
execute if score tree_status value matches 0 unless block ~ ~-2 ~ air run scoreboard players set tree_status 2

#If the tree has reached its max length, update the tree status
execute if score tree_length value matches ..0 run scoreboard players set tree_status value 1

#Upward Acceleration
execute if score @s counter1 matches 0 at @s rotated as @s run tp @s ~ ~ ~ ~ ~-1
execute if score @s counter1 matches 1 at @s rotated as @s run tp @s ~ ~ ~ ~ ~-2
execute if score @s counter1 matches 2 at @s rotated as @s run tp @s ~ ~ ~ ~ ~-3

#Twist
execute if score @s counter2 matches 1 at @s rotated as @s run tp @s ~ ~ ~ ~3 ~
execute if score @s counter2 matches 2 at @s rotated as @s run tp @s ~ ~ ~ ~6 ~
execute if score @s counter2 matches -1 at @s rotated as @s run tp @s ~ ~ ~ ~-3 ~
execute if score @s counter2 matches -2 at @s rotated as @s run tp @s ~ ~ ~ ~-6 ~

#Travel forward and recurse
execute at @s rotated as @s run tp @s ^ ^ ^1
execute if score tree_status value matches 0 at @s rotated as @s run function tid:misc/jungle_tree_recurse

#On the tail-end, build the tree if it did not fail
execute if score tree_status value matches 1 run function tid:misc/jungle_tree_trunk