summon marker ~ ~ ~ {Tags:["randomnum"]}

execute store result score randombase itemwheel_random run data get entity @e[tag=randomnum,limit=1] UUID[0]

scoreboard players operation randombase itemwheel_random %= @s itemwheel_length

scoreboard players operation @s itemwheel_random = randombase itemwheel_random

kill @e[tag=randomnum]