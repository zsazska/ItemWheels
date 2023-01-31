execute store result score display itemwheel_id_compare run data get storage itemwheel displayTemp[0].Id

execute if score @s itemwheel_spinitemwheel = display itemwheel_id_compare run function itemwheel:spin/founditemwheel

data remove storage itemwheel displayTemp[0]

execute unless data storage itemwheel {displayTemp:[]} run function itemwheel:spin/finditemwheel



