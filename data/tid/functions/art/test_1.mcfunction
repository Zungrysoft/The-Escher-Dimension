#Test all of the art galleries to see if the player built them
execute if score art_nature value matches 0 positioned 31 54 23 if blocks ~ ~ ~ ~2 ~3 ~2 ~ ~128 ~ all run function tid:art/reward_nature
execute if score art_sand2 value matches 0 positioned 31 54 27 if blocks ~ ~ ~ ~2 ~3 ~2 ~ ~128 ~ all run function tid:art/reward_sand2
execute if score art_soulsand value matches 0 positioned 27 54 31 if blocks ~ ~ ~ ~2 ~3 ~2 ~ ~128 ~ all run function tid:art/reward_soulsand
execute if score art_neon value matches 0 positioned 23 54 31 if blocks ~ ~ ~ ~2 ~3 ~2 ~ ~128 ~ all run function tid:art/reward_neon

#Retroactively fixes the bug where the art gallery could burn down the reserve space wool by giving the player their Lightless Gardens chest for free
execute unless score art_gallery_fix value matches 1 if block 26 183 31 air run function tid:art/gallery_fix
execute unless score art_gallery_fix value matches 1 if block 26 183 32 air run function tid:art/gallery_fix
execute unless score art_gallery_fix value matches 1 if block 25 183 30 air run function tid:art/gallery_fix
#If that block is obsidian, that means the fix is not necessary since the player generated this dungeon in a newer version
execute unless score art_gallery_fix value matches 1 if block 25 183 30 obsidian run scoreboard players set art_gallery_fix value 1
