#Make sure there is still a block beneath this entity
execute unless block ~ ~-1 ~ air run setblock ~ ~ ~ chest[facing=north]{LootTable: "tid:chests/sin_chambers"}

#Kill the source entity
kill @s
