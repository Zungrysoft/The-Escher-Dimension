#Always generate at least two, and keep them far apart
execute if score moon_rooms value matches ..200 unless score infernal_portals value matches 2.. unless entity @e[type=area_effect_cloud,distance=0..30,name="teleporter",nbt={Color:4}] run function tid:dungeon/moon/event1_generate

#Others can also generate at random
execute if predicate tid:random_02 run function tid:dungeon/moon/event1_generate