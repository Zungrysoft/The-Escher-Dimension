#Remove everything again
execute at @e[name="nature_grow_tree_remove"] run fill ~-2 ~ ~-2 ~2 ~ ~2 air replace dispenser
execute at @e[name="nature_grow_tree_remove"] run fill ~-2 ~ ~-2 ~2 ~ ~2 air replace redstone_block
kill @e[name="nature_grow_tree_remove"]