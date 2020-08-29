#Always generate at least one
execute if score @e[name="stronghold2_roomcount",type=area_effect_cloud,limit=1] tries matches ..350 unless data storage tid {stronghold2_hellion_portals:1} run function tid:dungeon/stronghold2/event1_generate

#Others can also generate at random
execute if predicate tid:random_02 unless data storage tid {stronghold2_hellion_portals:1} run function tid:dungeon/stronghold2/event1_generate