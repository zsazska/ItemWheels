summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["itemwheelrecall"],HandItems:[{id:"minecraft:dirt",Count:1b,tag:{display:{Name:'{"text":"If you see this item, something went wrong!","color":"dark_red","italic":false}'}}},{}]}

setblock ~ ~-1 ~ barrel
item replace block ~ ~-1 ~ container.0 with dirt
data modify block ~ ~-1 ~ CustomName set from storage itemwheel RecallTemp[0].Display

function itemwheel:recall/cycleitems

#execute if score recall itemwheel_length matches 1 run function itemwheel:recall/flipfix
function itemwheel:recall/flipfix
function itemwheel:recall/slotfix