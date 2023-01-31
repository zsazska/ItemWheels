execute store result score place itemwheel_id_compare run data get storage itemwheel PlaceTemp[0].Id

execute if score place itemwheel_id_compare = @s itemwheel_placedisplay run scoreboard players set place itemwheel_exists 1
execute if score place itemwheel_id_compare = @s itemwheel_placedisplay run function itemwheel:placedisplay/placedisplay
execute if score place itemwheel_id_compare = @s itemwheel_placedisplay run data modify storage itemwheel PlaceTemp set value []
execute unless score place itemwheel_id_compare = @s itemwheel_placedisplay run data remove storage itemwheel PlaceTemp[0]

execute unless data storage itemwheel {PlaceTemp:[]} run function itemwheel:placedisplay/checkforitemwheel
