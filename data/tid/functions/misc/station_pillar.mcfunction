#First, decide if we're even going to generate this
execute if predicate tid:random_25 if blocks ~1 ~127 ~1 ~-1 ~118 ~-1 1033 1 1033 all run function tid:misc/station_pillar_generate

#Kill self
kill @s