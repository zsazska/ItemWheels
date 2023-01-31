execute store result score idcheck itemwheel_id_compare run data get storage itemwheel RecallTemp[0].Id 1

execute if score idcheck itemwheel_id_compare = @s itemwheel_recall store result score recall itemwheel_length run data get storage itemwheel RecallTemp[0].Length
scoreboard players operation recall itemwheel_length %= two itemwheel_constant

execute if score idcheck itemwheel_id_compare = @s itemwheel_recall run function itemwheel:recall/replacestart
execute if score idcheck itemwheel_id_compare = @s itemwheel_recall run scoreboard players set exists itemwheel_exists 1
execute if score idcheck itemwheel_id_compare = @s itemwheel_recall run data merge storage itemwheel {RecallTemp:[]}

data remove storage itemwheel RecallTemp[0]

execute unless data storage itemwheel {RecallTemp:[]} run function itemwheel:recall/finditemwheel