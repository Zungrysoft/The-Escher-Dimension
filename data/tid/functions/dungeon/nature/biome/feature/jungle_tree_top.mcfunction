#Trunk
fill ~ ~2 ~ ~ ~ ~ jungle_log

#Leaves
fill ~-2 ~ ~-2 ~2 ~1 ~2 jungle_leaves[persistent=false] replace air
fill ~ ~2 ~-1 ~ ~3 ~1 jungle_leaves[persistent=false] replace air
fill ~-1 ~2 ~ ~1 ~3 ~ jungle_leaves[persistent=false] replace air

#Randomly edit some leaves
execute if predicate tid:random_50 positioned ~2 ~1 ~2 if block ~ ~ ~ jungle_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-2 ~1 ~2 if block ~ ~ ~ jungle_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~2 ~1 ~-2 if block ~ ~ ~ jungle_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~-2 ~1 ~-2 if block ~ ~ ~ jungle_leaves run setblock ~ ~ ~ air
execute if predicate tid:random_50 positioned ~1 ~2 ~1 if block ~ ~ ~ air run setblock ~ ~ ~ jungle_leaves[persistent=false]
execute if predicate tid:random_50 positioned ~-1 ~2 ~1 if block ~ ~ ~ air run setblock ~ ~ ~ jungle_leaves[persistent=false]
execute if predicate tid:random_50 positioned ~1 ~2 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ jungle_leaves[persistent=false]
execute if predicate tid:random_50 positioned ~-1 ~2 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ jungle_leaves[persistent=false]

#Add cocoa beans
execute if predicate tid:random_05 positioned ~1 ~-1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ cocoa[facing=west]
execute if predicate tid:random_05 positioned ~-1 ~-1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ cocoa[facing=east]
execute if predicate tid:random_05 positioned ~ ~-1 ~1 if block ~ ~ ~ air run setblock ~ ~ ~ cocoa[facing=north]
execute if predicate tid:random_05 positioned ~ ~-1 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ cocoa[facing=south]

#Add vines to trunk
execute if predicate tid:random_33 positioned ~1 ~-2 ~ if block ~ ~ ~ air run setblock ~ ~ ~ vine[west=true]
execute if predicate tid:random_33 positioned ~-1 ~-3 ~ if block ~ ~ ~ air run setblock ~ ~ ~ vine[east=true]
execute if predicate tid:random_33 positioned ~ ~-2 ~1 if block ~ ~ ~ air run setblock ~ ~ ~ vine[north=true]
execute if predicate tid:random_33 positioned ~ ~-3 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ vine[south=true]

#Add run setblock ~ ~ ~ vines to leaves
execute if predicate tid:random_33 positioned ~3 ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ vine[west=true]
execute if predicate tid:random_33 positioned ~3 ~ ~2 if block ~ ~ ~ air run setblock ~ ~ ~ vine[west=true]
execute if predicate tid:random_33 positioned ~3 ~ ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ vine[west=true]
execute if predicate tid:random_33 positioned ~-3 ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ vine[east=true]
execute if predicate tid:random_33 positioned ~-3 ~ ~2 if block ~ ~ ~ air run setblock ~ ~ ~ vine[east=true]
execute if predicate tid:random_33 positioned ~-3 ~ ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ vine[east=true]
execute if predicate tid:random_33 positioned ~ ~1 ~3 if block ~ ~ ~ air run setblock ~ ~ ~ vine[north=true]
execute if predicate tid:random_33 positioned ~2 ~ ~3 if block ~ ~ ~ air run setblock ~ ~ ~ vine[north=true]
execute if predicate tid:random_33 positioned ~-1 ~ ~3 if block ~ ~ ~ air run setblock ~ ~ ~ vine[north=true]
execute if predicate tid:random_33 positioned ~ ~1 ~-3 if block ~ ~ ~ air run setblock ~ ~ ~ vine[south=true]
execute if predicate tid:random_33 positioned ~2 ~ ~-3 if block ~ ~ ~ air run setblock ~ ~ ~ vine[south=true]
execute if predicate tid:random_33 positioned ~-1 ~ ~-3 if block ~ ~ ~ air run setblock ~ ~ ~ vine[south=true]
