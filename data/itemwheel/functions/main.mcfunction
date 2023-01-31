scoreboard players enable @a[tag=itemwheel.allowmodify] itemwheel_save
scoreboard players enable @a[tag=itemwheel.allowmodify] itemwheel_recall
scoreboard players enable @a[tag=itemwheel.allowmodify] itemwheel_spinduration
scoreboard players enable @a[tag=itemwheel.allowspin] itemwheel_spinitemwheel
scoreboard players enable @a[tag=itemwheel.allowmodify] itemwheel_placedisplay
scoreboard players enable @a[tag=itemwheel.allowmodify] itemwheel_removedisplay
scoreboard players enable @a itemwheel_permissions

execute as @a at @s if score @s itemwheel_save matches 1.. run function itemwheel:save/checkblock
execute as @a at @s if score @s itemwheel_recall matches 1.. run function itemwheel:recall/startrecall
execute as @a if score @s itemwheel_spinduration matches 1.. run function itemwheel:setspinduration
execute as @a if score @s itemwheel_spinitemwheel matches 1.. run function itemwheel:spin/spinstarted
execute as @a at @s if score @s itemwheel_placedisplay matches 1.. run function itemwheel:placedisplay/start
execute as @a if score @s itemwheel_removedisplay matches 1.. run function itemwheel:removedisplay/removedisplay
execute as @a if score @s itemwheel_permissions matches 1.. run function itemwheel:permissionmsg

execute as @e[tag=itemwheelitemlist,scores={itemwheel_spinduration=1..}] at @s run function itemwheel:spin/spinone
execute as @e[tag=itemwheelitemlist,scores={itemwheel_resetdelay=1..}] at @s run function itemwheel:spin/resetwait

execute as @e[tag=itemwheelnamedisplay,predicate=!itemwheel:ridingonarmorstand] run kill @s