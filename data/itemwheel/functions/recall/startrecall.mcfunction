scoreboard players set exists itemwheel_exists 0

data merge storage itemwheel {RecallTemp:[]}

data modify storage itemwheel RecallTemp set from storage itemwheel itemwheels

function itemwheel:recall/finditemwheel

execute if score exists itemwheel_exists matches 0 run tellraw @s {"text":"This wheel doesn't exist!","color":"red"}

scoreboard players set @s itemwheel_recall 0

kill @e[tag=itemwheelrecall]