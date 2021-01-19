#Phase 0: Wait for chunks to load
execute unless score infernal_handler_phase value matches 1.. run function tid:dungeon/infernal/infernal_handler_p0

#Phase 10: Initialize the world and generate factories
execute if score infernal_handler_phase value matches 10 run function tid:dungeon/infernal/infernal_handler_p10

#Phase 18: Build the glass-covered bridges
execute if score infernal_handler_phase value matches 18 run function tid:dungeon/infernal/infernal_handler_p18

#Phase 19: Build the other buildings
execute if score infernal_handler_phase value matches 19 run function tid:dungeon/infernal/infernal_handler_p19

#Phase 20: Expand the buildings
execute if score infernal_handler_phase value matches 20 run function tid:dungeon/infernal/infernal_handler_p20

#Phase 30: Make sure that a sufficient number of rooms got generated
execute if score infernal_handler_phase value matches 30 run function tid:dungeon/infernal/infernal_handler_p30

#Phase 40: Final Steps
execute if score infernal_handler_phase value matches 40 run function tid:dungeon/infernal/infernal_handler_p40