#Account for the pillars in the ymax
function tid:update_coords
scoreboard players operation ytemp value = @s y
scoreboard players remove ytemp value 149
scoreboard players operation ymax value += ytemp value

#Reset xcount
scoreboard players set xcount value 0

#Run it
function tid:dungeon/jungle/rng/rng_x