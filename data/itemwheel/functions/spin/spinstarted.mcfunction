scoreboard players set display itemwheel_exists 0

data modify storage itemwheel displayTemp set from storage itemwheel itemwheels

function itemwheel:spin/finditemwheel

execute if score display itemwheel_exists matches 0 run tellraw @s {"text":"This wheel doesn't exist","color": "red"}

scoreboard players set @s itemwheel_spinitemwheel 0