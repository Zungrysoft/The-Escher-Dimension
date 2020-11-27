#Track the number of kills so far this tick
scoreboard players add @s fireworks_kills 1

#Grant the main advancement if enough kills were made
execute if score @s fireworks_kills matches 5.. run advancement grant @s only tid:layer_1/kill_all_with_fireworks

#Revoke this advancement so it can be obtained again
advancement revoke @s only tid:layer_1/kill_with_fireworks
