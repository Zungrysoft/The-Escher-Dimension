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
setblock 24 57 -3 soul_wall_torch[facing=west]
setblock 24 57 3 soul_wall_torch[facing=west]

#Mark on the map
fill -25 255 -25 25 255 25 stone
