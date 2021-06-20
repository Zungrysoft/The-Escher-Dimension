#Place the top block
setblock ~ ~ ~ stone_bricks
function tid:dungeon/intro/rng/stone_bricks

#If no spine chests have been built yet build it
execute unless score intro_spine_chests value matches 1.. run setblock ~ ~1 ~ chest{LootTable: "tid:chests/intro_spine"}
scoreboard players set intro_spine_chests value 1
