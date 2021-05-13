#Pick a structure from this list
setblock ~ ~ ~ minecraft:structure_block{name: "tid:neon/port_east", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}

#Activate whichever structure block was picked
setblock ~ ~1 ~ minecraft:redstone_block

#Reserve
fill ~1 ~128 ~ ~3 ~134 ~7 blue_wool

#Mark this area on the map
fill ~ 255 ~ ~3 255 ~7 minecraft:green_terracotta replace stone
fill ~ 255 ~ ~3 255 ~7 minecraft:green_terracotta replace purpur_block

#Loop down
execute positioned ~ ~-1 ~ run function tid:misc/neon_port_east_down
execute positioned ~ ~7 ~ run function tid:misc/neon_port_east_up

#Add doorway
summon minecraft:area_effect_cloud ~3 ~2 ~3 {Duration:99999999,CustomName:"\"neon_halls_east\""}

#Count the number of ports
scoreboard players remove neon_ports value 1

#We're done here
kill @s
