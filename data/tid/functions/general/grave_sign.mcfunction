#Sign orientation
setblock ~ ~ ~ oak_sign[rotation=0] destroy
execute if block ~-1 ~ ~ air run setblock ~ ~ ~ oak_sign[rotation=4]
execute if block ~ ~ ~-1 air run setblock ~ ~ ~ oak_sign[rotation=8]
execute if block ~1 ~ ~ air run setblock ~ ~ ~ oak_sign[rotation=12]
execute if predicate tid:random_50 if block ~-1 ~ ~ air run setblock ~ ~ ~ oak_sign[rotation=4]
execute if predicate tid:random_33 if block ~ ~ ~-1 air run setblock ~ ~ ~ oak_sign[rotation=8]
execute if predicate tid:random_25 if block ~1 ~ ~ air run setblock ~ ~ ~ oak_sign[rotation=12]

#Sign text
data modify block ~ ~ ~ Text1 set value '{"text":"Here Lies"}'

#Sign username
tag @s add graved
data modify block ~ ~ ~ Text2 set value '{"selector":"@a[tag=graved,limit=1]"}'
tag @s remove graved

#Death Counter
execute if score @s deaths matches ..1 run data modify block ~ ~ ~ Text3 set value '{"text":"I"}'
execute if score @s deaths matches 2 run data modify block ~ ~ ~ Text3 set value '{"text":"II"}'
execute if score @s deaths matches 3 run data modify block ~ ~ ~ Text3 set value '{"text":"III"}'
execute if score @s deaths matches 4 run data modify block ~ ~ ~ Text3 set value '{"text":"IV"}'
execute if score @s deaths matches 5 run data modify block ~ ~ ~ Text3 set value '{"text":"V"}'
execute if score @s deaths matches 6 run data modify block ~ ~ ~ Text3 set value '{"text":"VI"}'
execute if score @s deaths matches 7 run data modify block ~ ~ ~ Text3 set value '{"text":"VII"}'
execute if score @s deaths matches 8 run data modify block ~ ~ ~ Text3 set value '{"text":"VIII"}'
execute if score @s deaths matches 9 run data modify block ~ ~ ~ Text3 set value '{"text":"IX"}'
execute if score @s deaths matches 10 run data modify block ~ ~ ~ Text3 set value '{"text":"X"}'

execute if score @s deaths matches 11 run data modify block ~ ~ ~ Text3 set value '{"text":"XI"}'
execute if score @s deaths matches 12 run data modify block ~ ~ ~ Text3 set value '{"text":"XII"}'
execute if score @s deaths matches 13 run data modify block ~ ~ ~ Text3 set value '{"text":"XIII"}'
execute if score @s deaths matches 14 run data modify block ~ ~ ~ Text3 set value '{"text":"XIV"}'
execute if score @s deaths matches 15 run data modify block ~ ~ ~ Text3 set value '{"text":"XV"}'
execute if score @s deaths matches 16 run data modify block ~ ~ ~ Text3 set value '{"text":"XVI"}'
execute if score @s deaths matches 17 run data modify block ~ ~ ~ Text3 set value '{"text":"XVII"}'
execute if score @s deaths matches 18 run data modify block ~ ~ ~ Text3 set value '{"text":"XVIII"}'
execute if score @s deaths matches 19 run data modify block ~ ~ ~ Text3 set value '{"text":"XIX"}'
execute if score @s deaths matches 20 run data modify block ~ ~ ~ Text3 set value '{"text":"XX"}'

execute if score @s deaths matches 21 run data modify block ~ ~ ~ Text3 set value '{"text":"XXI"}'
execute if score @s deaths matches 22 run data modify block ~ ~ ~ Text3 set value '{"text":"XXII"}'
execute if score @s deaths matches 23 run data modify block ~ ~ ~ Text3 set value '{"text":"XXIII"}'
execute if score @s deaths matches 24 run data modify block ~ ~ ~ Text3 set value '{"text":"XXIV"}'
execute if score @s deaths matches 25 run data modify block ~ ~ ~ Text3 set value '{"text":"XXV"}'
execute if score @s deaths matches 26 run data modify block ~ ~ ~ Text3 set value '{"text":"XXVI"}'
execute if score @s deaths matches 27 run data modify block ~ ~ ~ Text3 set value '{"text":"XXVII"}'
execute if score @s deaths matches 28 run data modify block ~ ~ ~ Text3 set value '{"text":"XXVIII"}'
execute if score @s deaths matches 29 run data modify block ~ ~ ~ Text3 set value '{"text":"XXIX"}'
execute if score @s deaths matches 30 run data modify block ~ ~ ~ Text3 set value '{"text":"XXX"}'

execute if score @s deaths matches 31 run data modify block ~ ~ ~ Text3 set value '{"text":"XXXI"}'
execute if score @s deaths matches 32 run data modify block ~ ~ ~ Text3 set value '{"text":"XXXII"}'
execute if score @s deaths matches 33 run data modify block ~ ~ ~ Text3 set value '{"text":"XXXIII"}'
execute if score @s deaths matches 34 run data modify block ~ ~ ~ Text3 set value '{"text":"XXXIV"}'
execute if score @s deaths matches 35 run data modify block ~ ~ ~ Text3 set value '{"text":"XXXV"}'
execute if score @s deaths matches 36 run data modify block ~ ~ ~ Text3 set value '{"text":"XXXVI"}'
execute if score @s deaths matches 37 run data modify block ~ ~ ~ Text3 set value '{"text":"XXXVII"}'
execute if score @s deaths matches 38 run data modify block ~ ~ ~ Text3 set value '{"text":"XXXVIII"}'
execute if score @s deaths matches 39 run data modify block ~ ~ ~ Text3 set value '{"text":"XXXIX"}'
execute if score @s deaths matches 40 run data modify block ~ ~ ~ Text3 set value '{"text":"XL"}'

execute if score @s deaths matches 41 run data modify block ~ ~ ~ Text3 set value '{"text":"XLI"}'
execute if score @s deaths matches 42 run data modify block ~ ~ ~ Text3 set value '{"text":"XLII"}'
execute if score @s deaths matches 43 run data modify block ~ ~ ~ Text3 set value '{"text":"XLIII"}'
execute if score @s deaths matches 44 run data modify block ~ ~ ~ Text3 set value '{"text":"XLIV"}'
execute if score @s deaths matches 45 run data modify block ~ ~ ~ Text3 set value '{"text":"XLV"}'
execute if score @s deaths matches 46 run data modify block ~ ~ ~ Text3 set value '{"text":"XLVI"}'
execute if score @s deaths matches 47 run data modify block ~ ~ ~ Text3 set value '{"text":"XLVII"}'
execute if score @s deaths matches 48 run data modify block ~ ~ ~ Text3 set value '{"text":"XLVIII"}'
execute if score @s deaths matches 49 run data modify block ~ ~ ~ Text3 set value '{"text":"XLIX"}'
execute if score @s deaths matches 50 run data modify block ~ ~ ~ Text3 set value '{"text":"L"}'

execute if score @s deaths matches 51 run data modify block ~ ~ ~ Text3 set value '{"text":"LI"}'
execute if score @s deaths matches 52 run data modify block ~ ~ ~ Text3 set value '{"text":"LII"}'
execute if score @s deaths matches 53 run data modify block ~ ~ ~ Text3 set value '{"text":"LIII"}'
execute if score @s deaths matches 54 run data modify block ~ ~ ~ Text3 set value '{"text":"LIV"}'
execute if score @s deaths matches 55 run data modify block ~ ~ ~ Text3 set value '{"text":"LV"}'
execute if score @s deaths matches 56 run data modify block ~ ~ ~ Text3 set value '{"text":"LVI"}'
execute if score @s deaths matches 57 run data modify block ~ ~ ~ Text3 set value '{"text":"LVII"}'
execute if score @s deaths matches 58 run data modify block ~ ~ ~ Text3 set value '{"text":"LVIII"}'
execute if score @s deaths matches 59 run data modify block ~ ~ ~ Text3 set value '{"text":"LIX"}'
execute if score @s deaths matches 60 run data modify block ~ ~ ~ Text3 set value '{"text":"LX"}'

execute if score @s deaths matches 61 run data modify block ~ ~ ~ Text3 set value '{"text":"LXI"}'
execute if score @s deaths matches 62 run data modify block ~ ~ ~ Text3 set value '{"text":"LXII"}'
execute if score @s deaths matches 63 run data modify block ~ ~ ~ Text3 set value '{"text":"LXIII"}'
execute if score @s deaths matches 64 run data modify block ~ ~ ~ Text3 set value '{"text":"LXIV"}'
execute if score @s deaths matches 65 run data modify block ~ ~ ~ Text3 set value '{"text":"LXV"}'
execute if score @s deaths matches 66 run data modify block ~ ~ ~ Text3 set value '{"text":"LXVI"}'
execute if score @s deaths matches 67 run data modify block ~ ~ ~ Text3 set value '{"text":"LXVII"}'
execute if score @s deaths matches 68 run data modify block ~ ~ ~ Text3 set value '{"text":"LXVIII"}'
execute if score @s deaths matches 69 run data modify block ~ ~ ~ Text3 set value '{"text":"LXIX"}'
execute if score @s deaths matches 70 run data modify block ~ ~ ~ Text3 set value '{"text":"LXX"}'

execute if score @s deaths matches 71 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXI"}'
execute if score @s deaths matches 72 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXII"}'
execute if score @s deaths matches 73 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXIII"}'
execute if score @s deaths matches 74 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXIV"}'
execute if score @s deaths matches 75 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXV"}'
execute if score @s deaths matches 76 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXVI"}'
execute if score @s deaths matches 77 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXVII"}'
execute if score @s deaths matches 78 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXVIII"}'
execute if score @s deaths matches 79 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXIX"}'
execute if score @s deaths matches 80 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXX"}'

execute if score @s deaths matches 81 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXXI"}'
execute if score @s deaths matches 82 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXXII"}'
execute if score @s deaths matches 83 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXXIII"}'
execute if score @s deaths matches 84 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXXIV"}'
execute if score @s deaths matches 85 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXXV"}'
execute if score @s deaths matches 86 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXXVI"}'
execute if score @s deaths matches 87 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXXVII"}'
execute if score @s deaths matches 88 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXXVIII"}'
execute if score @s deaths matches 89 run data modify block ~ ~ ~ Text3 set value '{"text":"LXXXIX"}'
execute if score @s deaths matches 90 run data modify block ~ ~ ~ Text3 set value '{"text":"XC"}'

execute if score @s deaths matches 91 run data modify block ~ ~ ~ Text3 set value '{"text":"XCI"}'
execute if score @s deaths matches 92 run data modify block ~ ~ ~ Text3 set value '{"text":"XCII"}'
execute if score @s deaths matches 93 run data modify block ~ ~ ~ Text3 set value '{"text":"XCIII"}'
execute if score @s deaths matches 94 run data modify block ~ ~ ~ Text3 set value '{"text":"XCIV"}'
execute if score @s deaths matches 95 run data modify block ~ ~ ~ Text3 set value '{"text":"XCV"}'
execute if score @s deaths matches 96 run data modify block ~ ~ ~ Text3 set value '{"text":"XCVI"}'
execute if score @s deaths matches 97 run data modify block ~ ~ ~ Text3 set value '{"text":"XCVII"}'
execute if score @s deaths matches 98 run data modify block ~ ~ ~ Text3 set value '{"text":"XCVIII"}'
execute if score @s deaths matches 99 run data modify block ~ ~ ~ Text3 set value '{"text":"XCIX"}'
execute if score @s deaths matches 100 run data modify block ~ ~ ~ Text3 set value '{"text":"C"}'

execute if score @s deaths matches 101.. run data modify block ~ ~ ~ Text3 set value '{"text":"who has died"}'
execute if score @s deaths matches 101.. run data modify block ~ ~ ~ Text4 set value '{"text":"many times..."}'
