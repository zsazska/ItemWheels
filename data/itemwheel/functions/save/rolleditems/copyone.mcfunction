data modify storage itemwheel itemwheels[0].RolledItems append from storage itemwheel CopyTemp[0]
data remove storage itemwheel itemwheels[0].RolledItems[-1].Slot

data remove storage itemwheel CopyTemp[0]

execute unless data storage itemwheel {CopyTemp:[]} run function itemwheel:save/rolleditems/copyone