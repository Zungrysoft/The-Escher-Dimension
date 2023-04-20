#Delete the Command Block
fill ~ ~ ~ ~ ~1 ~ air

#Place the spawner
# setblock ~ ~-1 ~ spawner{MaxNearbyEntities: 100s, RequiredPlayerRange: 3s, SpawnCount: 1s, MinSpawnDelay: 12s, MaxSpawnDelay: 12s, Delay: 1s, SpawnRange: 0s, SpawnPotentials: [{Entity: {id: "minecraft:potion",Item:{id:"minecraft:prismarine_crystals",Count:1b,tag:{CustomPotionColor:10944508,CustomPotionEffects:[{Id:25,Duration:300,Amplifier:3},{Id:28,Duration:500}]}},Motion:[0d,0.4d,0d]}, Weight: 1}]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,CustomName:"\"levitation_dispenser\"",Tags:["levitation_dispenser"]}
execute positioned ~0 ~-1 ~0 if block ~ ~ ~ #tid:levitation_dispenser_replace if block ~ ~1 ~ air run setblock ~ ~ ~ sea_lantern

execute positioned ~0 ~-1 ~1 if block ~ ~ ~ #tid:levitation_dispenser_replace if block ~ ~1 ~ air run setblock ~ ~ ~ sea_lantern
execute positioned ~0 ~-1 ~-1 if block ~ ~ ~ #tid:levitation_dispenser_replace if block ~ ~1 ~ air run setblock ~ ~ ~ sea_lantern
execute positioned ~1 ~-1 ~0 if block ~ ~ ~ #tid:levitation_dispenser_replace if block ~ ~1 ~ air run setblock ~ ~ ~ sea_lantern
execute positioned ~-1 ~-1 ~0 if block ~ ~ ~ #tid:levitation_dispenser_replace if block ~ ~1 ~ air run setblock ~ ~ ~ sea_lantern

execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #tid:levitation_dispenser_replace if block ~ ~1 ~ air run setblock ~ ~ ~ sea_lantern
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #tid:levitation_dispenser_replace if block ~ ~1 ~ air run setblock ~ ~ ~ sea_lantern
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #tid:levitation_dispenser_replace if block ~ ~1 ~ air run setblock ~ ~ ~ sea_lantern
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #tid:levitation_dispenser_replace if block ~ ~1 ~ air run setblock ~ ~ ~ sea_lantern

fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 warped_slab[type=top] replace air
