execute if entity @s[type=!#tid:undead] run effect give @s instant_health 1 0 false
execute if entity @s[type=#tid:undead] run effect give @s instant_damage 1 0 false
execute anchored eyes facing entity @s eyes run function tid:gameplay/ai_potion_carrier_healing_particle
playsound minecraft:block.brewing_stand.brew hostile @a ~ ~ ~ 1 1.8