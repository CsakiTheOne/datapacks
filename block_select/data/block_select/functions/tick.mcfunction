# select block
execute as @e[nbt={Item:{tag:{display:{Name:'{"text":"block select"}'}}}}] at @s unless entity @e[tag=block_select,distance=0..2] positioned ~ ~-2 ~ run function block_select:select
kill @e[nbt={Item:{tag:{display:{Name:'{"text":"block select"}'}}}}]
# deselect
execute as @e[nbt={Item:{tag:{display:{Name:'{"text":"block deselect"}'}}}}] at @s if entity @e[tag=block_select,sort=nearest,limit=1] positioned ~ ~-2 ~ run function block_select:deselect
data modify entity @e[nbt={Item:{tag:{display:{Name:'{"text":"block deselect"}'}}}},limit=1] PickupDelay set value 1
# break block
execute as @e[tag=block_select] at @s if block ~ ~ ~ air run function block_select:deselect
# setblock command
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"text":"block select"}'}}}}] at @s unless block ~ ~ ~ air run function block_select:setblock
execute as @a[nbt={SelectedItem:{tag:{display:{Name:'{"text":"block select"}'}}}}] at @s unless block ~ ~ ~ air run setblock ~ ~ ~ air