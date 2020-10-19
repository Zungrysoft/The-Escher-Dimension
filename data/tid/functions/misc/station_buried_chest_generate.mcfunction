#Open up the inside
fill ~-1 ~ ~-1 ~1 ~4 ~1 air

#Build the chest
setblock ~ ~ ~ chest{LootTable: "tid:chests/station_secret",CustomName:"\"Secret Chest\""}

#Summon the hint entity
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:99999999,CustomName:"\"station_secret\""}

#Count the number generated
scoreboard players add station_secrets value 1