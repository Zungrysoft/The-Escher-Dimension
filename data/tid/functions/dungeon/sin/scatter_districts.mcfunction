#Generate the district entities
summon area_effect_cloud 0 0 0 {Duration:99999999,Color:0b,Tags:["sin_district"]}
summon area_effect_cloud 0 0 0 {Duration:99999999,Color:1b,Tags:["sin_district"]}
summon area_effect_cloud 0 0 0 {Duration:99999999,Color:2b,Tags:["sin_district"]}
summon area_effect_cloud 0 0 0 {Duration:99999999,Color:3b,Tags:["sin_district"]}
summon area_effect_cloud 0 0 0 {Duration:99999999,Color:4b,Tags:["sin_district"]}
summon area_effect_cloud 0 0 0 {Duration:99999999,Color:5b,Tags:["sin_district"]}
summon area_effect_cloud 0 0 0 {Duration:99999999,Color:6b,Tags:["sin_district"]}

#Spread them throughout the caverns
spreadplayers 0 0 40 110 under 200 false @e[tag=sin_district]
