scoreboard players add cycle itemwheel_cycles 1

execute store result score existcheck itemwheel_id_compare run data get storage itemwheel itemwheelsTemp[0].Id

data remove storage itemwheel itemwheelsTemp[0]

execute if score existcheck itemwheel_id_compare = @s itemwheel_save run scoreboard players set bool itemwheel_exists 1
execute if score existcheck itemwheel_id_compare = @s itemwheel_save run data merge storage itemwheel {itemwheelsTemp:[]}

execute unless data storage itemwheel {itemwheelsTemp:[]} run function itemwheel:save/checkforexistingitemwheel