#If we've hit something, explode
execute unless block ~ ~ ~ air run summon tnt
execute unless block ~ ~ ~ air if predicate tid:random_50 run summon tnt ~1 ~ ~
execute unless block ~ ~ ~ air if predicate tid:random_50 run summon tnt ~-1 ~ ~
execute unless block ~ ~ ~ air if predicate tid:random_50 run summon tnt ~ ~ ~1
execute unless block ~ ~ ~ air if predicate tid:random_50 run summon tnt ~ ~ ~-1

#Otherwise, go forward with a slight deviation
scoreboard players set temp value -1
execute if block ~ ~ ~ air run scoreboard players set temp value 0
execute unless score temp value matches -1 if predicate tid:random_50 run scoreboard players add temp value 1
execute unless score temp value matches -1 if predicate tid:random_50 run scoreboard players add temp value 2

execute if score temp value matches 0 positioned ~0.3 ~-1 ~ run function tid:misc/power_drill_scan
execute if score temp value matches 1 positioned ~ ~-1 ~0.3 run function tid:misc/power_drill_scan
execute if score temp value matches 2 positioned ~-0.3 ~-1 ~ run function tid:misc/power_drill_scan
execute if score temp value matches 3 positioned ~ ~-1 ~-0.3 run function tid:misc/power_drill_scan

#Leave a particle
particle flame ~ ~ ~
particle flame ~ ~0.5 ~
