execute at @e[tag=itemwheeldisplay] if score @e[tag=itemwheeldisplay,sort=nearest,limit=1] itemwheel_displayid = @s itemwheel_placedisplay run kill @e[tag=itemwheeldisplay,sort=nearest,limit=1]

summon armor_stand ~ ~ ~ {DisabledSlots:4096,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["itemwheeldisplay","new"],NoGravity:1b,Passengers:[{id:"minecraft:armor_stand",Marker:1b,CustomNameVisible:1b,Small:1b,Invisible:1b,Tags:["itemwheelnamedisplay","new"],CustomName:'{"text":"Item Wheel"}'}]}

tp @e[tag=new,tag=itemwheeldisplay] ~ ~-1.2 ~ ~ ~

data modify entity @e[tag=new,tag=itemwheelnamedisplay,limit=1] CustomName set from storage itemwheel PlaceTemp[0].Display

scoreboard players operation @e[tag=new] itemwheel_displayid = @s itemwheel_placedisplay

scoreboard players set @s itemwheel_placedisplay 0

tag @e remove new