#Reset variables
scoreboard players operation moon_flower_cur value = moon_flower_seed value
scoreboard players set moon_flower_mode value 0
scoreboard players set moon_flower_branches value 1
scoreboard players set moon_flower_movesleft value 35
scoreboard players operation moon_flower_branchmovesleft value = moon_flower_movesleft value

#Start with the stem
fill ~ ~-2 ~ ~ ~2 ~ granite replace air
fill ~ ~-2 ~ ~ ~2 ~ granite replace end_stone

#Begin the process
function tid:dungeon/moon/flower/seed_roll
execute positioned ~ ~3 ~ run function tid:dungeon/moon/flower/main