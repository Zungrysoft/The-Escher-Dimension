#Retroactively fixes the bug where the art gallery could burn down the reserve space wool by giving the player their Lightless Gardens chest for free

#Set this global flag so the fix only happens once
scoreboard players set art_gallery_fix value 1

#Give the player their loot
execute if score art_nature value matches 0 positioned 31 54 23 run function tid:art/reward_nature

#Hopefully clear away all that fire (maybe)
execute positioned 24 183 32 run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 air replace fire
execute positioned 24 183 32 run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 obsidian replace blue_wool
execute positioned 24 183 32 run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 obsidian replace orange_wool
