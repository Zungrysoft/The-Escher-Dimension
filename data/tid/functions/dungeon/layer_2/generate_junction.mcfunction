#Carve area
fill -25 55 -25 25 62 25 air replace stone
fill -20 50 -20 20 54 20 air replace stone
fill -15 45 -15 15 49 15 air replace stone
fill -10 40 -10 10 44 10 air replace stone
fill -5 36 -5 5 39 5 air replace stone
fill -5 33 -5 5 35 5 lava replace stone

#Reserve space
fill -26 183 -26 26 191 26 blue_wool
fill -21 178 -21 21 182 21 blue_wool
fill -16 173 -16 16 177 16 blue_wool
fill -11 168 -11 11 172 11 blue_wool
fill -6 160 -6 6 167 6 blue_wool

#Add glowstone lights
setblock 24 54 24 glowstone
setblock 19 49 19 glowstone
setblock 14 44 14 glowstone
setblock -24 54 24 glowstone
setblock -19 49 19 glowstone
setblock -14 44 14 glowstone
setblock 24 54 -24 glowstone
setblock 19 49 -19 glowstone
setblock 14 44 -14 glowstone
setblock -24 54 -24 glowstone
setblock -19 49 -19 glowstone
setblock -14 44 -14 glowstone

#Add torches to soulsand entrance
#setblock 24 57 -3 soul_wall_torch[facing=west]
#setblock 24 57 3 soul_wall_torch[facing=west]

#Build the item shop
setblock 21 55 -30 minecraft:structure_block{name: "tid:junction/itemshop", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock 21 56 -30 minecraft:redstone_block
execute positioned 23 55 -27 run function tid:custom_mobs/dealer
execute positioned 21 55 -30 run fill ~ ~128 ~ ~3 ~131 ~4 blue_wool

#Mark on the map
fill -25 255 -25 25 255 25 stone

#Add the teleporter
summon minecraft:area_effect_cloud -4 36 -4 {Duration:99999999,CustomName:"\"teleporter\"",Color:2b}

