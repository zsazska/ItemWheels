function itemwheel:save/rolleditems/startcopy

execute store result score container itemwheel_length run data get block ~ ~ ~ Items
scoreboard players operation saved itemwheel_length += container itemwheel_length

execute if block ~ ~-1 ~ barrel positioned ~ ~-1 ~ run function itemwheel:save/savethis

execute store result storage itemwheel itemwheels[0].Length int 1 run scoreboard players get saved itemwheel_length

execute store result storage itemwheel itemwheels[0].Id int 1 run scoreboard players get @s itemwheel_save