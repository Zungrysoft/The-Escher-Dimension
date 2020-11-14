#Remove certain blocks first as they can cause lag if they are removed by the block under them being destroyed
fill 2006 51 2006 2057 56 2057 air replace #tid:remove_first
fill 2006 57 2006 2057 63 2057 air replace #tid:remove_first
fill 2006 64 2006 2057 70 2057 air replace #tid:remove_first
fill 2006 71 2006 2057 72 2057 air replace #tid:remove_first

#Empty the build area
fill 2006 50 2006 2057 50 2057 air
fill 2006 51 2006 2057 56 2057 air
fill 2006 57 2006 2057 63 2057 air
fill 2006 64 2006 2057 70 2057 air
fill 2006 71 2006 2057 72 2057 air

#Remove any items that may have been dropped
execute positioned 2032 55 2032 run kill @e[type=item,distance=0..50]
