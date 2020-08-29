#The arena chest has been disturbed! Get mad and spawn those mobs!
#Summon a bunch of them
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}

#Spread them around
function tid:misc/soulsand_arena_scatter

#Summon mobs on them
execute at @e[name="scatter",type=area_effect_cloud] run summon skeleton

kill @e[name="scatter",type=area_effect_cloud]

#Lock players into the arena to make it a bit harder to just grab the loot and run. Only replace air though.
fill ~14 ~-1 ~1 ~14 ~2 ~-12 iron_bars replace air
fill ~-14 ~-1 ~1 ~-14 ~2 ~-12 iron_bars replace air
fill ~12 ~-1 ~14 ~-12 ~2 ~14 iron_bars replace air
fill ~12 ~-1 ~-14 ~-12 ~2 ~-14 iron_bars replace air

#Play a sound effect
playsound minecraft:block.beacon.power_select player @a
playsound minecraft:item.trident.return block @a

#Kill self
kill @s