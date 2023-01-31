scoreboard players set bool itemwheel_chestfull 0
execute if data block ~ ~-1 ~ Items[{Slot:26b}] run scoreboard players set bool itemwheel_chestfull 1


data modify entity @e[tag=itemwheelrecall,limit=1] HandItems[0] set from storage itemwheel RecallTemp[0].RolledItems[0]
data remove storage itemwheel RecallTemp[0].RolledItems[0]


item replace block ~ ~-1 ~ container.0 from entity @e[tag=itemwheelrecall,limit=1] weapon.mainhand
execute if data storage itemwheel RecallTemp[0].RolledItems[0] if score bool itemwheel_chestfull matches 0 run function itemwheel:recall/cyclechest

execute if score bool itemwheel_chestfull matches 1 positioned ~ ~-1 ~ run setblock ~ ~-1 ~ barrel
execute if score bool itemwheel_chestfull matches 1 if data storage itemwheel RecallTemp[0].RolledItems[0] positioned ~ ~-1 ~ run function itemwheel:recall/cycleitems


execute if data storage itemwheel RecallTemp[0].RolledItems[0] run function itemwheel:recall/cycleitems


execute unless data storage itemwheel RecallTemp[0].RolledItems[0] run function itemwheel:recall/flipitems