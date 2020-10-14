#Set the block
execute if block ~ ~ ~ air run setblock ~ ~ ~ granite
execute if block ~ ~ ~ end_stone run setblock ~ ~ ~ granite

#Advance the seed
function tid:dungeon/moon/flower/seed_advance

#Track the number of moves
scoreboard players remove moon_flower_movesleft value 1
scoreboard players remove moon_flower_branchmovesleft value 1

#Get the random value from the seed
scoreboard players set calc1 value 20
scoreboard players operation temp value = moon_flower_cur value
scoreboard players operation temp value %= calc1 value

#Randomly decide the next action
execute if score temp value matches 0..1 run scoreboard players set moon_flower_mode value 0
execute if score temp value matches 2..3 run scoreboard players set moon_flower_mode value 1
execute if score temp value matches 4..5 run scoreboard players set moon_flower_mode value 2
execute if score temp value matches 6..7 run scoreboard players set moon_flower_mode value 3
execute if score temp value matches 8..9 run scoreboard players set moon_flower_mode value 4
execute if score temp value matches 10 run scoreboard players set moon_flower_mode value 5
execute if score temp value matches 15..18 run function tid:dungeon/moon/flower/branch

#Add in a light, the only non-seeded rng in the generator
execute if predicate tid:random_50 unless score moon_flower_branchmovesleft value matches 1.. if block ~ ~ ~ granite run setblock ~ ~ ~ glowstone

#Recurse
scoreboard players set temp2 value 0
execute if score moon_flower_branchmovesleft value matches 1.. run function tid:dungeon/moon/flower/recurse

