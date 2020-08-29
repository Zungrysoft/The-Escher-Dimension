#Always generate at least one
execute if score stronghold2_rooms value matches ..200 unless score stronghold2_hellion_portals value matches 2.. run function tid:dungeon/stronghold2/event1_generate

#Others can also generate at random
execute if predicate tid:random_02 run function tid:dungeon/stronghold2/event1_generate