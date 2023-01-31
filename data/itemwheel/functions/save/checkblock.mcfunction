scoreboard players set saved itemwheel_length 0
scoreboard players set container itemwheel_length 0
scoreboard players set cycle itemwheel_cycles 0
scoreboard players set bool itemwheel_exists 0

data modify storage itemwheel itemwheelsTemp set from storage itemwheel itemwheels

execute if block ~ ~-1 ~ barrel run function itemwheel:save/standingonbarrel

execute unless block ~ ~-1 ~ barrel run tellraw @s {"text":"Stand on a barrel block to save a wheel!","color":"red"}

scoreboard players set @s itemwheel_save 0