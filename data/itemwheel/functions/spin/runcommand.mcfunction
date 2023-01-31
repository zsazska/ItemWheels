setblock ~ ~ ~ repeating_command_block[facing=up]{auto:1b} replace
data modify block ~ ~ ~ Command set from entity @s data.Items[0].tag.Command

setblock ~ ~1 ~ chain_command_block[facing=up]{Command:"fill ~ ~ ~ ~ ~-1 ~ air",auto:1b} replace

