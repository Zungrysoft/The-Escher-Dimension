#Make sure the air around is solid
scoreboard players set temp value 0
execute unless block ~ ~1 ~ air unless block ~ ~-1 ~ air unless block ~1 ~ ~ air unless block ~-1 ~ ~ air unless block ~ ~ ~1 air unless block ~ ~ ~-1 air run scoreboard players set temp value 1
execute if predicate tid:random_80 unless block ~ ~-20 ~ clay run scoreboard players set temp value 1

#Make sure there isn't granite we're getting too close to
execute if score temp value matches 0 unless block ~ ~ ~ granite unless block ~1 ~ ~ granite unless block ~ ~1 ~ granite unless block ~1 ~1 ~ granite unless block ~ ~-1 ~ granite unless block ~1 ~-1 ~ granite unless block ~ ~ ~1 granite unless block ~1 ~ ~1 granite unless block ~ ~ ~-1 granite unless block ~1 ~ ~-1 granite run function tid:misc/moon_bramble
