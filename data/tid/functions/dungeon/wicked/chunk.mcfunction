#Decide on the height
scoreboard players set temp8 value 0
execute if predicate tid:random_50 run scoreboard players add temp8 value 1
execute if predicate tid:random_50 run scoreboard players add temp8 value 2
execute if predicate tid:random_50 run scoreboard players add temp8 value 4
execute if predicate tid:random_50 run scoreboard players add temp8 value 8

#Run the chunk generate function based on the height
execute if score temp8 value matches 0 positioned ~ 130 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 1 positioned ~ 131 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 2 positioned ~ 132 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 3 positioned ~ 133 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 4 positioned ~ 134 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 5 positioned ~ 135 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 6 positioned ~ 136 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 7 positioned ~ 137 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 8 positioned ~ 138 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 9 positioned ~ 139 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 10 positioned ~ 140 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 11 positioned ~ 141 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 12 positioned ~ 142 ~ run function tid:dungeon/wicked/chunk_build
execute if score temp8 value matches 13 positioned ~ 143 ~ run function tid:dungeon/wicked/chunk_build
#The other selections correspond to a solid wall chunk, so do nothing for them
