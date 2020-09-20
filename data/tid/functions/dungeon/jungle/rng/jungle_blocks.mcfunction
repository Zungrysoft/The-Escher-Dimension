#Select which block to replace it with
scoreboard players set rng value 0
execute if predicate tid:random_50 run scoreboard players add rng value 1
execute if predicate tid:random_50 run scoreboard players add rng value 2
execute if score rng value matches 0 run function tid:dungeon/jungle/rng/replace_cobblestone
execute if score rng value matches 1 run function tid:dungeon/jungle/rng/replace_stone
execute if score rng value matches 2 run function tid:dungeon/jungle/rng/replace_stone_bricks
execute if score rng value matches 3 run function tid:dungeon/jungle/rng/replace_mossy_stone_bricks