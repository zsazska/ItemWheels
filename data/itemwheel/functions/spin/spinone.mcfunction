execute if data entity @s {data:{Items:[]}} run data modify entity @s data.Items set from entity @s data.Copy

data modify entity @e[tag=itemwheeldisplay,sort=nearest,limit=1] ArmorItems[3] set from entity @s data.Items[0]
execute positioned ~ ~0.7 ~ run data modify entity @e[tag=itemwheelnamedisplay,sort=nearest,limit=1] CustomName set from entity @s data.Items[0].tag.display.Name

scoreboard players remove @s itemwheel_spinduration 1

playsound minecraft:block.note_block.pling master @a ~ ~ ~ 0.3 2

execute if score @s itemwheel_spinduration matches 0 run function itemwheel:spin/spinend

data remove entity @s data.Items[0]