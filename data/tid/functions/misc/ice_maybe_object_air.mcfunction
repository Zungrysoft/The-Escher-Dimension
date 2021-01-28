#Delete the command block
fill ~ ~1 ~ ~ ~ ~ air

#Run the function
function tid:misc/ice_maybe_object

#Check if anything was generated. If so, place a block below
execute unless block ~ ~ ~ air run setblock ~ ~-1 ~ stone_bricks
