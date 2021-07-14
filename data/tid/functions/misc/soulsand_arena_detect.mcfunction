#The arena chest has been disturbed! Get mad and spawn those mobs!
#Summon a bunch of them
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
execute if predicate tid:random_50 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"scatter\""}

#Spread them around
function tid:misc/soulsand_arena_scatter

#Decide which wave type to spawn
scoreboard players set temp value 0
execute if predicate tid:random_50 run scoreboard players add temp value 1
execute if predicate tid:random_50 run scoreboard players add temp value 2
execute if predicate tid:random_50 run scoreboard players add temp value 4
execute if predicate tid:random_50 run scoreboard players add temp value 8
execute if score temp value matches 0 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_0
execute if score temp value matches 1 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_1
execute if score temp value matches 2 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_2
execute if score temp value matches 3 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_3
execute if score temp value matches 4 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_4
execute if score temp value matches 5 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_5
execute if score temp value matches 6 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_6
execute if score temp value matches 7 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_7
execute if score temp value matches 8 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_8
execute if score temp value matches 9 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_9
execute if score temp value matches 10 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_10
execute if score temp value matches 11 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_11
execute if score temp value matches 12 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_12
execute if score temp value matches 13 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_13
execute if score temp value matches 14 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_14
execute if score temp value matches 15 at @e[name="scatter",type=area_effect_cloud] run function tid:misc/soulsand_wave_15

kill @e[name="scatter",type=area_effect_cloud]

#Maybe do an event
execute if score haunted_chests_found value matches 3.. if predicate tid:random_10 run function tid:misc/soulsand_arena_event
scoreboard players add haunted_chests_found value 1

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