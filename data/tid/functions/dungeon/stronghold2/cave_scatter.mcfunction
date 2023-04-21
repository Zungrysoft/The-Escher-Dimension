# Summon the scatterer
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["new"]}

# Set the number to generate
scoreboard players set cave_count value 110

# Start the recursion
function tid:dungeon/stronghold2/cave_scatter_recurse

# Place the items in the cave
# execute as @e[type=area_effect_cloud,tag=cave_item] at @s run function tid:misc/stronghold2_cave_item

# Build the spire
setblock ~-7 ~-1 ~-7 minecraft:structure_block{name: "tid:stronghold2/spire_1", posX: 0, posY: 0, posZ: 0, ignoreEntities: 0b, powered: 0b, mode: "LOAD", showair: 0b, showboundingbox: 0b}
setblock ~-7 ~-0 ~-7 minecraft:redstone_block
fill ~-7 ~-2 ~-7 ~7 ~-8 ~7 cobblestone replace air
fill ~-7 ~-2 ~-7 ~7 ~-8 ~7 cobblestone replace stone

#Randomize spire blocks
scoreboard players set xmax value 15
scoreboard players set ymax value 45
scoreboard players set zmax value 15
execute positioned ~-7 ~-0 ~-7 run function tid:dungeon/stronghold2/rng/run_rng

# Kill the scatterer
kill @e[tag=new]

# Kill spawned items
kill @e[type=minecraft:item,distance=0..70]
