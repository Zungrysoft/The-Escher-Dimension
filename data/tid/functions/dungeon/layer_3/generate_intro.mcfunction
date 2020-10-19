#Carve area
fill 2 55 -27 -2 59 25 air replace stone

fill 6 55 -27 7 58 25 air replace stone
fill 11 55 -22 12 58 25 air replace stone
fill 16 55 -17 17 58 25 air replace stone
fill 21 55 -12 22 58 25 air replace stone

fill 3 55 24 22 58 25 air replace stone
fill 3 55 16 22 59 20 air replace stone
fill 3 55 11 22 58 12 air replace stone
fill 8 55 6 22 58 7 air replace stone
fill 8 55 1 22 58 2 air replace stone
fill 8 55 -1 22 58 -2 air replace stone
fill 8 55 -6 22 58 -7 air replace stone
fill 3 55 -11 22 58 -12 air replace stone
fill 3 55 -16 17 58 -17 air replace stone
fill 3 55 -21 12 58 -22 air replace stone
fill 3 55 -26 7 58 -27 air replace stone

fill -6 55 -27 -7 58 25 air replace stone
fill -11 55 -22 -12 58 25 air replace stone
fill -16 55 -17 -17 58 25 air replace stone
fill -21 55 -12 -22 58 25 air replace stone

fill -3 55 24 -22 58 25 air replace stone
fill -3 55 16 -22 59 20 air replace stone
fill -3 55 11 -22 58 12 air replace stone
fill -8 55 6 -22 58 7 air replace stone
fill -8 55 1 -22 58 2 air replace stone
fill -8 55 -1 -22 58 -2 air replace stone
fill -8 55 -6 -22 58 -7 air replace stone
fill -3 55 -11 -22 58 -12 air replace stone
fill -3 55 -16 -17 58 -17 air replace stone
fill -3 55 -21 -12 58 -22 air replace stone
fill -3 55 -26 -7 58 -27 air replace stone

#Reserve space
fill 23 183 26 -23 186 -12 blue_wool
fill 18 183 -13 -18 186 -17 blue_wool
fill 13 183 -18 -13 186 -22 blue_wool
fill 8 183 -23 -8 186 -27 blue_wool

#Mark on the map
fill 22 255 25 -22 255 -11 stone
fill 17 255 -12 -17 255 -16 stone
fill 12 255 -17 -12 255 -21 stone
fill 7 255 -22 -7 255 -26 stone

#Add glowstone lights

#Build the item shop
setblock -2 55 26 minecraft:structure_block{name: "tid:intro/itemshop2", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock -2 56 26 minecraft:redstone_block
execute positioned 0 55 28 run function tid:custom_mobs/villager
execute positioned -2 55 26 run fill ~ ~128 ~ ~4 ~132 ~5 blue_wool



