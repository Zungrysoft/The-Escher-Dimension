#Find a Layer 2 Portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:10},distance=0..5] run advancement grant @s only tid:layer_1/find_layer_2_portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:10},tag=open,distance=0..5] run advancement grant @s only tid:layer_1/activate_layer_2_portal

#Find a Layer 3 Portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:2},distance=0..5] run advancement grant @s only tid:layer_2/find_layer_3_portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:2},tag=open,distance=0..5] run advancement grant @s only tid:layer_2/activate_layer_3_portal

#Find a Hellion Portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:0},distance=0..5] run advancement grant @s only tid:layer_1/find_hellion_portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:0},tag=open,distance=0..5] run advancement grant @s only tid:layer_1/activate_hellion_portal

#Find a Sin City Portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:8},distance=0..5] run advancement grant @s only tid:layer_2/find_sin_portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:8},tag=open,distance=0..5] run advancement grant @s only tid:layer_2/activate_sin_portal

#Find a Jungle Portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:6},distance=0..5] run advancement grant @s only tid:layer_3/find_jungle_portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:6},tag=open,distance=0..5] run advancement grant @s only tid:layer_3/activate_jungle_portal

#Find an Infernal Portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:4},distance=0..5] run advancement grant @s only tid:layer_3/find_infernal_portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:4},tag=open,distance=0..5] run advancement grant @s only tid:layer_3/activate_infernal_portal

#Finding dungeons
#Layer 1
execute if score @s found_stronghold matches 1 run advancement grant @s only tid:layer_1/find_stronghold2
execute if score @s found_brick matches 1 run advancement grant @s only tid:layer_1/find_brick
execute if score @s found_canal matches 1 run advancement grant @s only tid:layer_1/find_canal
#Layer 2
execute if score @s found_ravine matches 1 run advancement grant @s only tid:layer_2/find_ravine
execute if score @s found_nature matches 1 run advancement grant @s only tid:layer_2/find_nature
execute if score @s found_soulsand matches 1 run advancement grant @s only tid:layer_2/find_soulsand
execute if score @s found_neon matches 1 run advancement grant @s only tid:layer_2/find_neon
#Layer 3
execute if score @s found_station matches 1 run advancement grant @s only tid:layer_3/find_station
#execute if score @s found_moon matches 1 run advancement grant @s only tid:layer_3/find_moon
#execute if score @s found_mutant matches 1 run advancement grant @s only tid:layer_3/find_mutant
#Sin Chambers
#execute if score @s found_chambers matches 1 run advancement grant @s only tid:sin/find_sin_chambers

#Ride a Strider
execute if entity @s[predicate=tid:in_layer_hellion,predicate=tid:on_strider] run advancement grant @s only tid:hellion/ride_strider

#Circumnavigate Hellion
#Track the player's movements in the four quadrants.
execute if entity @s[predicate=tid:in_layer_hellion,predicate=tid:on_strider] if score @s x matches 10.. if score @s z matches 10.. run scoreboard players set @s adv_hellion_1 1
execute as @a[predicate=tid:in_layer_hellion,predicate=tid:on_strider] if score @s x matches ..-10 if score @s z matches 10.. run scoreboard players set @s adv_hellion_2 1
execute if entity @s[predicate=tid:in_layer_hellion,predicate=tid:on_strider] if score @s x matches 10.. if score @s z matches ..-10 run scoreboard players set @s adv_hellion_3 1
execute if entity @s[predicate=tid:in_layer_hellion,predicate=tid:on_strider] if score @s x matches ..-10 if score @s z matches ..-10 run scoreboard players set @s adv_hellion_4 1
#Remove the player's movement trackings if they ever dismount the strider
execute if entity @s[predicate=!tid:on_strider] run scoreboard players set @s adv_hellion_1 0
execute if entity @s[predicate=!tid:on_strider] run scoreboard players set @s adv_hellion_2 0
execute if entity @s[predicate=!tid:on_strider] run scoreboard players set @s adv_hellion_3 0
execute if entity @s[predicate=!tid:on_strider] run scoreboard players set @s adv_hellion_4 0
#Give the player the advancement if they have all four quadrants
execute if entity @s[predicate=tid:in_layer_hellion,predicate=tid:on_strider] if score @s adv_hellion_1 matches 1 if score @s adv_hellion_2 matches 1 if score @s adv_hellion_3 matches 1 if score @s adv_hellion_4 matches 1 run advancement grant @s only tid:hellion/circumnavigate

#Find a Jungle Pyramid
execute if entity @e[type=area_effect_cloud,name="adv_pyramid",distance=0..12] run advancement grant @s only tid:jungle/find_pyramid

#Cool Obsidian
execute if entity @s[advancements={tid:layer_2/cool_obsidian=false,tid:layer_2/found_neon=true}] run function tid:misc/advancement_cool_obsidian
