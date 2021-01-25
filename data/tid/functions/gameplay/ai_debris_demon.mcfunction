#The Debris Demon can break one block per second, if it's close to a player, and if the block in question is not an unbreakable block.
scoreboard players remove @s counter1 1
execute if entity @p[distance=0..10,gamemode=survival] if predicate tid:random_10 if score @s counter1 matches ..0 positioned ^ ^1 ^1 unless block ~ ~ ~ #tid:unbreakable unless block ~ ~ ~ air run function tid:gameplay/ai_debris_demon_break
execute if entity @p[distance=0..10,gamemode=survival] if predicate tid:random_05 if score @s counter1 matches ..0 positioned ^-1 ^1 ^1 unless block ~ ~ ~ #tid:unbreakable unless block ~ ~ ~ air run function tid:gameplay/ai_debris_demon_break
execute if entity @p[distance=0..10,gamemode=survival] if predicate tid:random_05 if score @s counter1 matches ..0 positioned ^1 ^1 ^1 unless block ~ ~ ~ #tid:unbreakable unless block ~ ~ ~ air run function tid:gameplay/ai_debris_demon_break
execute if entity @p[distance=0..10,gamemode=survival] if predicate tid:random_05 if score @s counter1 matches ..0 positioned ^ ^2 ^1 unless block ~ ~ ~ #tid:unbreakable unless block ~ ~ ~ air run function tid:gameplay/ai_debris_demon_break
