#Start carving
function tid:dungeon/moon/carve/run

#Pillar
execute if score temp6 value matches 0 positioned 100 ~ 40 run function tid:dungeon/moon/pillar/run
execute if score temp6 value matches 1 positioned 100 ~ 7 run function tid:dungeon/moon/pillar/run
execute if score temp6 value matches 2 positioned 110 ~ 70 run function tid:dungeon/moon/pillar/run
execute if score temp6 value matches 3 positioned 120 ~ 40 run function tid:dungeon/moon/pillar/run

#Recursion
execute positioned ~ ~8 ~ unless block ~ ~140 ~ clay run function tid:dungeon/moon/carve
