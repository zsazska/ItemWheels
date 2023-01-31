execute at @e[tag=itemwheeldisplay] if score @s itemwheel_removedisplay = @e[tag=itemwheeldisplay,sort=nearest,limit=1] itemwheel_displayid run kill @e[tag=itemwheeldisplay,sort=nearest,limit=1]

scoreboard players set @s itemwheel_removedisplay 0