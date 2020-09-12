scoreboard players add zcount value 1
fill ~ ~ ~ ~ ~ ~ cobblestone replace andesite
fill ~ ~ ~ ~ ~ ~ cobblestone replace polished_andesite
fill ~ ~ ~ ~ ~ ~ cobblestone replace andesite_stairs
execute if predicate tid:random_66 run fill ~ ~ ~ ~ ~ ~ mossy_cobblestone replace cobblestone
execute unless score zcount value matches 100.. positioned ~ ~ ~1 run function tid:misc/rand_z