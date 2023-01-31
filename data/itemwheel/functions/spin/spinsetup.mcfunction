summon marker ~ ~ ~ {Tags:["itemwheelitemlist","new"],data:{Copy:[],Items:[],Display:""}}

data modify entity @e[tag=new,limit=1] data.Copy set from storage itemwheel displayTemp[0].RolledItems
data modify entity @e[tag=new,limit=1] data.Items set from storage itemwheel displayTemp[0].RolledItems
data modify entity @e[tag=new,limit=1] data.Display set from storage itemwheel displayTemp[0].Display

execute store result score @e[tag=new] itemwheel_displayid run data get storage itemwheel displayTemp[0].Id 1
execute store result score @e[tag=new] itemwheel_length run data get storage itemwheel displayTemp[0].Length 1

scoreboard players operation @e[tag=new] itemwheel_spinduration = base itemwheel_spinduration

execute as @e[tag=new] at @s run function itemwheel:random/getrandomnumber
execute as @e[tag=new] run scoreboard players operation @s itemwheel_spinduration += @s itemwheel_random
execute as @e[tag=new] if score @s itemwheel_length matches 0 run scoreboard players set @s itemwheel_spinduration 0

execute unless score @s itemwheel_length matches 0 run tag @s add inuse

execute positioned ~ ~0.7 ~ run data modify entity @e[tag=itemwheelnamedisplay,sort=nearest,limit=1] Marker set value 0b


tag @e remove new