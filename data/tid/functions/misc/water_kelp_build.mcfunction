#Builds a single kelp plant

#Initial Block
setblock ~ ~ ~ kelp

#Decide on the height
scoreboard players set temp9 value 0
execute if predicate tid:random_50 run scoreboard players add temp9 value 1
execute if predicate tid:random_50 run scoreboard players add temp9 value 2
execute if predicate tid:random_50 run scoreboard players add temp9 value 4
execute if predicate tid:random_10 run scoreboard players add temp9 value 4

#Construct the plant
execute if score temp9 value matches 1 run fill ~ ~1 ~ ~ ~1 ~ kelp replace water
execute if score temp9 value matches 2 run fill ~ ~1 ~ ~ ~2 ~ kelp replace water
execute if score temp9 value matches 3 run fill ~ ~1 ~ ~ ~3 ~ kelp replace water
execute if score temp9 value matches 4 run fill ~ ~1 ~ ~ ~4 ~ kelp replace water
execute if score temp9 value matches 5 run fill ~ ~1 ~ ~ ~5 ~ kelp replace water
execute if score temp9 value matches 6 run fill ~ ~1 ~ ~ ~6 ~ kelp replace water
execute if score temp9 value matches 7 run fill ~ ~1 ~ ~ ~7 ~ kelp replace water
execute if score temp9 value matches 8 run fill ~ ~1 ~ ~ ~8 ~ kelp replace water
execute if score temp9 value matches 9 run fill ~ ~1 ~ ~ ~9 ~ kelp replace water
execute if score temp9 value matches 10 run fill ~ ~1 ~ ~ ~10 ~ kelp replace water
execute if score temp9 value matches 11 run fill ~ ~1 ~ ~ ~11 ~ kelp replace water
