#Reset xcount
scoreboard players set xcount value 0

#Decide on the two types of flower
scoreboard players set flower1 value 0
execute if predicate tid:random_50 run scoreboard players add flower1 value 1
execute if predicate tid:random_50 run scoreboard players add flower1 value 2
execute if predicate tid:random_50 run scoreboard players add flower1 value 4
execute if predicate tid:random_50 run scoreboard players add flower1 value 8
execute if predicate tid:random_50 run scoreboard players add flower1 value 16
execute if predicate tid:random_50 run scoreboard players add flower1 value 32

scoreboard players set flower2 value 0
execute if predicate tid:random_50 run scoreboard players add flower2 value 1
execute if predicate tid:random_50 run scoreboard players add flower2 value 2
execute if predicate tid:random_50 run scoreboard players add flower2 value 4
execute if predicate tid:random_50 run scoreboard players add flower2 value 8
execute if predicate tid:random_50 run scoreboard players add flower2 value 16
execute if predicate tid:random_50 run scoreboard players add flower2 value 32

#Run it
function tid:dungeon/nature/rng/flower_rng_x
