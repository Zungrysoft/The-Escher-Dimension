#Sound Effect
playsound minecraft:particle.soul_escape hostile @a ~ ~ ~ 2 .8

#Decide which type of grave we will summon
execute if entity @s[nbt={Item:{tag:{zombie:1b}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["grave","zombie"]}
execute if entity @s[nbt={Item:{tag:{creeper:1b}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["grave","creeper"]}
execute if entity @s[nbt={Item:{tag:{skeleton:1b}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["grave","skeleton"]}
execute if entity @s[nbt={Item:{tag:{spider:1b}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["grave","spider"]}
execute if entity @s[nbt={Item:{tag:{blaze:1b}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["grave","blaze"]}
execute if entity @s[nbt={Item:{tag:{witch:1b}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["grave","witch"]}
execute if entity @s[nbt={Item:{tag:{phantom:1b}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:99999999,Tags:["grave","phantom"]}

#Remove dropped item
kill @s
