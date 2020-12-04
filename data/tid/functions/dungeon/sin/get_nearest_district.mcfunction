#Find the nearest district and store its color into the district_color value
execute store result score district_color value run data get entity @e[tag=sin_district,sort=nearest,limit=1] Color 1
