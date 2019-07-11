execute as @e[nbt={Item:{tag:{display:{Name:'{"text":"block select"}'}}}}] at @s unless entity @e[tag=block_select,distance=0..2] positioned ~ ~-2 ~ run function block_select:select
kill @e[nbt={Item:{tag:{display:{Name:'{"text":"block select"}'}}}}]

execute as @e[tag=block_select] at @s if block ~ ~ ~ air run function block_select:deselect