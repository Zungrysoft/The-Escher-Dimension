#Saturation
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_saturation_strong:1b}}]}] run scoreboard players add @s pending_hunger 3
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_saturation_medium:1b}}]}] run scoreboard players add @s pending_hunger 1
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_saturation_weak:1b}}]}] if predicate tid:random_33 run scoreboard players add @s pending_hunger 1

#Haste
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_haste_strong:1b}}]}] run function tid:gameplay/eff_grant_haste_strong
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_haste_weak:1b}}]}] run function tid:gameplay/eff_grant_haste_weak

#Strength
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_strength_strong:1b}}]}] run function tid:gameplay/eff_grant_strength_strong
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_strength_weak:1b}}]}] run function tid:gameplay/eff_grant_strength_weak

#Speed
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_speed_strong:1b}}]}] run function tid:gameplay/eff_grant_speed_strong
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_speed_weak:1b}}]}] run function tid:gameplay/eff_grant_speed_weak

#Resistance
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_resistance_strong:1b}}]}] run function tid:gameplay/eff_grant_resistance_strong
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_resistance_weak:1b}}]}] run function tid:gameplay/eff_grant_resistance_weak

#Ultra Buff
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_grant_ultra:1b}}]}] run function tid:gameplay/eff_grant_ultra

#Inflict Wither
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_wither_target:1b}}]}] run function tid:gameplay/eff_inflict_wither_target
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_wither_aoe:1b}}]}] run function tid:gameplay/eff_inflict_wither_aoe
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_wither_random:1b}}]}] run function tid:gameplay/eff_inflict_wither_random

#Inflict Slowness
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_slowness_target:1b}}]}] run function tid:gameplay/eff_inflict_slowness_target
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_slowness_aoe:1b}}]}] run function tid:gameplay/eff_inflict_slowness_aoe
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_slowness_random:1b}}]}] run function tid:gameplay/eff_inflict_slowness_random

#Inflict Weakness
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_weakness_target:1b}}]}] run function tid:gameplay/eff_inflict_weakness_target
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_weakness_aoe:1b}}]}] run function tid:gameplay/eff_inflict_weakness_aoe
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_weakness_random:1b}}]}] run function tid:gameplay/eff_inflict_weakness_random

#Inflict Levitation
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_levitation_target:1b}}]}] run function tid:gameplay/eff_inflict_levitation_target
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_levitation_aoe:1b}}]}] run function tid:gameplay/eff_inflict_levitation_aoe
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_levitation_random:1b}}]}] run function tid:gameplay/eff_inflict_levitation_random

#Inflict Fire
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_fire_target:1b}}]}] run function tid:gameplay/eff_inflict_fire_target
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_fire_aoe:1b}}]}] run function tid:gameplay/eff_inflict_fire_aoe
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_inflict_fire_random:1b}}]}] run function tid:gameplay/eff_inflict_fire_random

#Launch monsters
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_launch_aoe:1b}}]}] run function tid:gameplay/eff_launch_aoe

#Give Gold Nugget
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_gold_nugget:1b}}]}] run give @s minecraft:gold_nugget

#Give Gold Ingot
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_gold_ingot:1b}}]}] run give @s minecraft:gold_ingot

#Reload Crossbows
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_reload:1b}}]}] run function tid:gameplay/eff_reload

#Potion Refill
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_refill_healing_9:1b}}]}] run function tid:gameplay/eff_refill_healing_9
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_refill_healing_8:1b}}]}] run function tid:gameplay/eff_refill_healing_8
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_refill_healing_7:1b}}]}] run function tid:gameplay/eff_refill_healing_7
execute if entity @s[nbt={Inventory:[{Slot:-106b, tag:{eff_refill_healing_6:1b}}]}] run function tid:gameplay/eff_refill_healing_6
