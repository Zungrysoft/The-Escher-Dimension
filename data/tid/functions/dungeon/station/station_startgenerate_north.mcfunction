say Initial Checks Successful
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"station_handler_north\"",Tags:["station_handler"]}
summon minecraft:area_effect_cloud ~-15 ~-11 ~-32 {Duration:99999999,CustomName:"\"station_cave_segment\""}
fill ~-15 ~117 ~-32 ~16 ~143 ~-1 minecraft:yellow_wool replace minecraft:orange_wool
scoreboard players set @e[tag=station_handler,limit=1] phase 0
scoreboard players set @e[tag=station_handler,limit=1] tries 55
say Starting Dungeon Generation...