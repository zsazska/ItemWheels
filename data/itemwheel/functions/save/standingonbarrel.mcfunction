function itemwheel:save/checkforexistingitemwheel

execute if score bool itemwheel_exists matches 0 run function itemwheel:save/newitemwheel
execute if score bool itemwheel_exists matches 1 run function itemwheel:save/findsaveditemwheel

data modify storage itemwheel itemwheels[0].RolledItems set value []
execute positioned ~ ~-1 ~ run function itemwheel:save/savethis

data modify storage itemwheel itemwheels[0].Display set from block ~ ~-1 ~ CustomName
execute unless data block ~ ~-1 ~ CustomName run data modify storage itemwheel itemwheels[0].Display set value "itemwheel display"

execute as @e[tag=itemwheelnamedisplay] if score @s itemwheel_displayid = @p itemwheel_save run data modify entity @s CustomName set from storage itemwheel itemwheels[0].Display

tellraw @s [{"text":"Wheel saved with an id of ","color":"green"},{"score":{"objective": "itemwheel_save","name": "@s"}}]