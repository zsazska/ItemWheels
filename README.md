--COMMANDS--

/trigger itemwheel_permissions : Shows the permissions you can give to players

/trigger itemwheel_placedisplay set <id> : Places a wheel display at the player's coordinates. !!Wheels can't be spun without a display!!
  
/trigger itemwheel_recall set <id> : Places the saved items in a wheel into barrels
  
/trigger itemwheel_removedisplay set <id> : Removes a wheel display
  
/trigger itemwheel_save set <id> : Saves an item wheel. To have more than 27 different items in a wheel, place the barrel blocks on top of each other, put the items in the barrels, stand on the top barrel and then save the wheel
  
/trigger itemwheel_spinduration set <value> : Sets the minimum spin duration of wheels. A higher number means all wheels will spin longer (Default: 70)
  
/trigger itemwheel_spinitemwheel set <id> : Spins a wheel. Can't be used if the selected wheel is already spinning
  
/function itemwheel:uninstall : Removes all scoreboards added by the datapack, all wheel displays and deletes every saved item wheel.
  
--ADDITIONAL NOTES--
  
  -Saving sets the item wheel's name the same as the top barrel's name if it has one. If it doesn't, the wheel's name will default to "Item Wheel".
  -If an item in a wheel has a custom name, it will be displayed while the wheel is spinning
  -Adding the "Command" tag to items runs that command if the item gets selected.
  Example: /give @s diamond{Command:"give @p diamond 5"}
  If a wheel stops on this item, the nearest player will get 5 diamonds
  

