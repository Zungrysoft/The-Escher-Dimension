#Change the room into the event room
fill ~2 ~4 ~2 ~5 ~5 ~5 air replace ladder
summon minecraft:area_effect_cloud ~2 ~4 ~2 {Duration:99999999,CustomName:"\"teleporter\"",Color:4b}

#Note that a portal has been successfully generated
scoreboard players add infernal_portals value 1

#Mark this area on the map. It has priority over all other rooms.
fill ~ 255 ~ ~7 255 ~7 minecraft:white_concrete
fill ~3 255 ~ ~4 255 ~7 minecraft:red_sandstone
fill ~ 255 ~3 ~7 255 ~4 minecraft:red_sandstone