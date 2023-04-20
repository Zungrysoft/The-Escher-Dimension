#Activate Layer 1 Portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:14},tag=open] run advancement grant @s only tid:intro/activate_portal

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
#execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:8},distance=0..5] run advancement grant @s only tid:layer_2/find_sin_portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:8},tag=open,distance=0..5] run advancement grant @s only tid:layer_2/activate_sin_portal

#Find a Jungle Portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:6},distance=0..5] run advancement grant @s only tid:layer_3/find_jungle_portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:6},tag=open,distance=0..5] run advancement grant @s only tid:layer_3/activate_jungle_portal

#Find an Infernal Portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:4},distance=0..5] run advancement grant @s only tid:layer_3/find_infernal_portal
execute if entity @e[type=area_effect_cloud,name="teleporter",nbt={Color:4},tag=open,distance=0..5] run advancement grant @s only tid:layer_3/activate_infernal_portal

#Find the boss
execute if entity @e[type=area_effect_cloud,name="boss_marker",distance=0..25] run advancement grant @s only tid:finale/find_boss

#Ride a Strider in Hellion
execute store result score temp value run clear @s minecraft:warped_fungus_on_a_stick 0
execute if entity @s[predicate=tid:in_layer_hellion,predicate=tid:on_strider] if score temp value matches 1.. run advancement grant @s only tid:hellion/ride_strider

#Ride a Strider in Infernal
execute if entity @s[predicate=tid:in_layer_infernal,predicate=tid:on_strider] if score temp value matches 1.. run advancement grant @s only tid:infernal/ride_strider

#Circumnavigate Hellion
#Track the player's movements in the four quadrants.
execute if entity @s[predicate=tid:in_layer_hellion,predicate=tid:on_strider] run function tid:update_coords
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
#execute if entity @e[type=area_effect_cloud,name="adv_pyramid",distance=0..12] run advancement grant @s only tid:jungle/find_pyramid

#Find a Sin City Capitol
execute positioned ~ 200 ~ if entity @e[type=area_effect_cloud,tag=sin_district,distance=0..10] run advancement grant @s only tid:sin/enter_capitol

#Cool Obsidian
execute if entity @s[advancements={tid:layer_2/cool_obsidian=false,tid:layer_2/find_neon=true}] if block ~ ~-1 ~ obsidian run function tid:misc/advancement_cool_obsidian

#Mine Ancient Debris in Damnation Station
execute if score @s mine_debris matches 1.. if entity @s[predicate=tid:in_layer_3] run advancement grant @s only tid:layer_3/mine_debris
scoreboard players set @s mine_debris 0

#Mine Crying Obsidian
execute if score @s mine_core matches 1.. if entity @s[predicate=tid:in_layer_finale] run advancement grant @s only tid:finale/destroy_core
scoreboard players set @s mine_core 0

#Use a map in Infernal Industries
execute if score @s use_map matches 1.. if entity @s[predicate=tid:in_layer_infernal] run advancement grant @s only tid:infernal/use_map
scoreboard players set @s use_map 0

#Re-Enter The Wicked Night
execute if entity @s[predicate=tid:in_layer_intro,advancements={tid:layer_2/root=true}] run advancement grant @s only tid:intro/return

#Mine Diorite
execute if score @s mine_diorite matches 1.. run advancement grant @s only tid:intro/mine_diorite

#Exterminate Silverfish
execute if score @s kill_silverfish matches 1.. run function tid:misc/advancement_kill_silverfish
execute if score @s kill_silverfish matches 1.. run function tid:misc/advancement_kill_silverfish
execute if score @s kill_silverfish matches 1.. run function tid:misc/advancement_kill_silverfish
execute if score @s kill_silverfish matches 1.. run function tid:misc/advancement_kill_silverfish
execute if score @s kill_silverfish matches 1.. run function tid:misc/advancement_kill_silverfish

#Non-Aggression Principle Advancement
execute if entity @s[advancements={tid:sin/craft_wool_sin=true}] if entity @s[advancements={tid:sin/find_loot_sin=false}] if entity @s[advancements={tid:misc/kill_piglin=false}] run advancement grant @s only tid:sin/nap

#Revoke the No Grave But The Sea advancement if the player leaves their boat without fully completing it
execute if entity @s[predicate=!tid:on_boat,advancements={tid:jungle/kill_all_on_boat=false}] run advancement revoke @s only tid:jungle/kill_all_on_boat

#Challenge Master
execute if entity @s[advancements={tid:finale/kill_boss=true,tid:layer_2/kill_with_zapper_arrow=true,tid:layer_2/kill_with_bounce_arrow=true,tid:layer_2/eat_all_foods=true,tid:layer_2/collect_honeycomb=true,tid:layer_2/get_all_flowers=true,tid:layer_2/enchant_max=true,tid:layer_3/get_all_netherite_gear=true,tid:infernal/kill_giant_magma_cube=true,tid:infernal/kill_on_strider=true,tid:hellion/circumnavigate=true,tid:layer_1/kill_all_with_fireworks=true,tid:layer_1/kill_silverfish=true,tid:jungle/kill_all_on_boat=true,}] run advancement grant @s only tid:finale/all_challenges

#Grant certain non-renewable advancements to all players instead of just the one
execute if entity @a[advancements={tid:jungle/kill_ravager=true}] run advancement grant @s only tid:jungle/kill_ravager
