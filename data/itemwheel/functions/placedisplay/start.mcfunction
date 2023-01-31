scoreboard players set place itemwheel_exists 0

data modify storage itemwheel PlaceTemp set from storage itemwheel itemwheels

function itemwheel:placedisplay/checkforitemwheel

execute if score place itemwheel_exists matches 0 run tellraw @s {"text": "This wheel doesn't exist!","color": "red"}

scoreboard players set @s itemwheel_placedisplay 0