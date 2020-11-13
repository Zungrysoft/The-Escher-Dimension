#Remove certain blocks first as they can cause lag if they are removed by the block under them being destroyed
fill 2000 50 2000 2064 56 2064 air replace #tid:remove_first
fill 2000 57 2000 2064 63 2064 air replace #tid:remove_first
fill 2000 64 2000 2064 70 2064 air replace #tid:remove_first
fill 2000 71 2000 2064 72 2064 air replace #tid:remove_first

#Empty the build area
fill 2000 50 2000 2064 56 2064 air
fill 2000 57 2000 2064 63 2064 air
fill 2000 64 2000 2064 70 2064 air
fill 2000 71 2000 2064 72 2064 air

#Remove any items that may have been dropped
execute positioned 2032 55 2032 run kill @e[type=item,distance=0..50]
