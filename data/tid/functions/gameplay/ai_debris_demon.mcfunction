#The Debris Demon can break one block per second, if it's close to a player, and if the block in question is not an unbreakable block.
scoreboard players add @s counter1 1
execute if entity @p[distance=0..8,gamemode=survival] if predicate tid:random_10 if score @s counter1 matches 20.. positioned ^ ^1 ^1 unless block ~ ~ ~ #tid:unbreakable unless block ~ ~ ~ air run function tid:gameplay/ai_debris_demon_break
execute if entity @p[distance=0..8,gamemode=survival] if predicate tid:random_05 if score @s counter1 matches 20.. positioned ^-1 ^1 ^1 unless block ~ ~ ~ #tid:unbreakable unless block ~ ~ ~ air run function tid:gameplay/ai_debris_demon_break
execute if entity @p[distance=0..8,gamemode=survival] if predicate tid:random_05 if score @s counter1 matches 20.. positioned ^1 ^1 ^1 unless block ~ ~ ~ #tid:unbreakable unless block ~ ~ ~ air run function tid:gameplay/ai_debris_demon_break
execute if entity @p[distance=0..8,gamemode=survival] if predicate tid:random_05 if score @s counter1 matches 20.. positioned ^ ^2 ^1 unless block ~ ~ ~ #tid:unbreakable unless block ~ ~ ~ air run function tid:gameplay/ai_debris_demon_break
