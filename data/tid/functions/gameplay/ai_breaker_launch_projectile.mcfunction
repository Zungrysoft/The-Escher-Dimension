# Edit the phase and reset charge time
scoreboard players set @s phase 0
scoreboard players set @s counter1 0

# Summon projectile
execute positioned ^ ^ ^1.5 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:99999999,Tags:["tid_breaker_projectile","tid_m1"]}
execute positioned ^ ^ ^1.5 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:99999999,Tags:["tid_breaker_projectile","tid_m2"]}
execute positioned ^ ^ ^1.5 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:99999999,Tags:["tid_breaker_projectile","tid_m3"]}
execute positioned ^ ^ ^1.5 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:99999999,Tags:["tid_breaker_projectile","tid_m4"]}
execute positioned ^ ^ ^1.5 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:99999999,Tags:["tid_breaker_projectile","tid_m5"]}
execute positioned ^ ^ ^1.5 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:99999999,Tags:["tid_breaker_projectile","tid_m6"]}
execute positioned ^ ^ ^1.5 run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:99999999,Tags:["tid_breaker_projectile","tid_m7"]}
