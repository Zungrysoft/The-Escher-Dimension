execute if block ~1 ~1 ~1 #tid:purpur_blocks if block ~1 ~1 ~2 #tid:purpur_blocks if block ~2 ~1 ~1 #tid:purpur_blocks if block ~2 ~1 ~2 #tid:purpur_blocks if block ~1 ~2 ~1 #tid:purpur_blocks if block ~1 ~2 ~2 #tid:purpur_blocks if block ~2 ~2 ~1 #tid:purpur_blocks if block ~2 ~2 ~2 #tid:purpur_blocks run tag @s add open

execute positioned ~ ~ ~1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_wall_sign[facing=west]{Text1: '{"text":"Place eight"}', Text2: '{"text":"purpur blocks"}', Text3: '{"text":"here to open"}', Text4: '{"text":"this portal."}'}
execute positioned ~ ~ ~2 if block ~ ~ ~ air run setblock ~ ~ ~ oak_wall_sign[facing=west]{Text1: '{"text":"Place eight"}', Text2: '{"text":"purpur blocks"}', Text3: '{"text":"here to open"}', Text4: '{"text":"this portal."}'}
execute positioned ~1 ~ ~ if block ~ ~ ~ air run setblock ~ ~ ~ oak_wall_sign[facing=north]{Text1: '{"text":"Place eight"}', Text2: '{"text":"purpur blocks"}', Text3: '{"text":"here to open"}', Text4: '{"text":"this portal."}'}
execute positioned ~2 ~ ~ if block ~ ~ ~ air run setblock ~ ~ ~ oak_wall_sign[facing=north]{Text1: '{"text":"Place eight"}', Text2: '{"text":"purpur blocks"}', Text3: '{"text":"here to open"}', Text4: '{"text":"this portal."}'}
execute positioned ~3 ~ ~1 if block ~ ~ ~ air run setblock ~ ~ ~ oak_wall_sign[facing=east]{Text1: '{"text":"Place eight"}', Text2: '{"text":"purpur blocks"}', Text3: '{"text":"here to open"}', Text4: '{"text":"this portal."}'}
execute positioned ~3 ~ ~2 if block ~ ~ ~ air run setblock ~ ~ ~ oak_wall_sign[facing=east]{Text1: '{"text":"Place eight"}', Text2: '{"text":"purpur blocks"}', Text3: '{"text":"here to open"}', Text4: '{"text":"this portal."}'}
execute positioned ~1 ~ ~3 if block ~ ~ ~ air run setblock ~ ~ ~ oak_wall_sign[facing=south]{Text1: '{"text":"Place eight"}', Text2: '{"text":"purpur blocks"}', Text3: '{"text":"here to open"}', Text4: '{"text":"this portal."}'}
execute positioned ~2 ~ ~3 if block ~ ~ ~ air run setblock ~ ~ ~ oak_wall_sign[facing=south]{Text1: '{"text":"Place eight"}', Text2: '{"text":"purpur blocks"}', Text3: '{"text":"here to open"}', Text4: '{"text":"this portal."}'}