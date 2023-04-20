#Remove certain blocks first as they can cause lag if they are removed by the block under them being destroyed
fill 2001 51 2001 2062 56 2062 air replace #tid:remove_first
fill 2001 57 2001 2062 63 2062 air replace #tid:remove_first
fill 2001 64 2001 2062 70 2062 air replace #tid:remove_first
fill 2001 71 2001 2062 72 2062 air replace #tid:remove_first

#Empty the build area
fill 2001 50 2001 2062 50 2062 air
fill 2001 51 2001 2062 56 2062 air
fill 2001 57 2001 2062 63 2062 air
fill 2001 64 2001 2062 70 2062 air
fill 2001 71 2001 2062 72 2062 air

#Remove any items that may have been dropped
execute positioned 2032 55 2032 run kill @e[type=item,distance=0..50]
