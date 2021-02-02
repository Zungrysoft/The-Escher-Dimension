#Add the teleporter
execute in tid:layer_1 store success score temp value run forceload add 3 3
execute in tid:layer_1 run summon minecraft:area_effect_cloud 3 55 3 {Duration:99999999,CustomName:"\"teleporter\"",Color:12b,Tags:["starts_open"]}
execute in tid:layer_1 if score temp value matches 1 run forceload remove 3 3

#Title text
title @a times 20 100 20
title @a title {"text":"","color":"yellow"}
title @a subtitle {"text":"The Final Portal has been opened...","color":"yellow"}

#Sound effect
execute in tid:layer_1 run playsound minecraft:block.beacon.activate block @a 0 55 0 20
execute in tid:layer_1 run playsound minecraft:item.lodestone_compass.lock block @a 0 55 0 20
