scoreboard players set display itemwheel_exists 1

execute as @e[tag=itemwheeldisplay,tag=!inuse] if score @s itemwheel_displayid = display itemwheel_id_compare at @s run function itemwheel:spin/spinsetup

data modify storage itemwheel displayTemp set value []