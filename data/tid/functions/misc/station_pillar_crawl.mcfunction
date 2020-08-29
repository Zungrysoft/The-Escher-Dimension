#Crawl up to hopefully meet the bridge that spawned this base
execute unless blocks ~1 ~128 ~1 ~-1 ~129 ~-1 33 1 33 all run kill @s
execute if blocks ~1 ~128 ~1 ~-1 ~129 ~-1 33 1 33 all run function tid:misc/station_pillar_crawl_move