#Always generate at least two, and keep them far apart
execute if score stronghold2_rooms value matches ..200 unless score hellion_portals value matches 2.. unless entity @e[type=area_effect_cloud,distance=0..30,name="teleporter",nbt={Color:0}] run function tid:dungeon/stronghold2/event1_generate

#Others can also generate at random
execute if predicate tid:random_02 run function tid:dungeon/stronghold2/event1_generate