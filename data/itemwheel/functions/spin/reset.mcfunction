execute positioned ~ ~0.7 ~ run data modify entity @e[tag=itemwheelnamedisplay,sort=nearest,limit=1] CustomName set from entity @s data.Display
execute positioned ~ ~0.7 ~ run data modify entity @e[tag=itemwheelnamedisplay,sort=nearest,limit=1] Marker set value 1b

item replace entity @e[tag=itemwheeldisplay,sort=nearest,limit=1] armor.head with air

tag @e[tag=itemwheeldisplay,sort=nearest,limit=1] remove inuse

kill @s