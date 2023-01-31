data merge storage itemwheel {itemwheels:[]}

scoreboard objectives remove itemwheelsetup

scoreboard objectives remove itemwheel_save

scoreboard objectives remove itemwheel_length
scoreboard objectives remove itemwheel_cycles
scoreboard objectives remove itemwheel_id_compare
scoreboard objectives remove itemwheel_exists

scoreboard objectives remove itemwheel_recall

scoreboard objectives remove itemwheel_chestfull

scoreboard objectives remove itemwheel_constant

scoreboard objectives remove itemwheel_spinduration

scoreboard objectives remove itemwheel_spinitemwheel

scoreboard objectives remove itemwheel_displayid

scoreboard objectives remove itemwheel_placedisplay

scoreboard objectives remove itemwheel_random

scoreboard objectives remove itemwheel_resetdelay

scoreboard objectives remove itemwheel_removedisplay

scoreboard objectives remove itemwheel_permissions

scoreboard players set setup itemwheelsetup 0

kill @e[tag=itemwheeldisplay]