#Always generate at least one
execute if score brick_rooms value matches ..200 unless score layer_2_portals value matches 2.. unless entity @e[name="teleporter",type=area_effect_cloud,nbt={Color:10},distance=0..30] if blocks ~1 ~126 ~1 ~6 ~127 ~6 1001 1 1001 all run function tid:dungeon/brick/event1_generate

#Others can also generate at random
execute if predicate tid:random_01 unless entity @e[name="teleporter",type=area_effect_cloud,nbt={Color:2},distance=0..30] if blocks ~1 ~126 ~1 ~6 ~127 ~6 1001 1 1001 all run function tid:dungeon/brick/event1_generate