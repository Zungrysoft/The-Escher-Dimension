#Scores
scoreboard players set built value 0

#Go through the possible positions the grave pieces could be built
execute positioned ~ ~ ~ unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~ ~1 ~ unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece

execute positioned ~1 ~ ~ unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~ ~ ~1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~-1 ~ ~ unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~ ~ ~-1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece

execute positioned ~1 ~1 ~ unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~ ~1 ~1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~-1 ~1 ~ unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~ ~1 ~-1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece

execute positioned ~1 ~ ~1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~1 ~ ~-1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~-1 ~ ~1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece

execute positioned ~1 ~1 ~1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~1 ~1 ~-1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~-1 ~1 ~1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
execute positioned ~-1 ~1 ~-1 unless block ~ ~ ~ #tid:unbreakable_grave run function tid:general/grave_build_piece
