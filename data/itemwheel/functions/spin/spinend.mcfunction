scoreboard players set @s itemwheel_resetdelay 40

execute if data entity @s data.Items[0].tag.Command positioned ~ ~1.8 ~ run function itemwheel:spin/runcommand
