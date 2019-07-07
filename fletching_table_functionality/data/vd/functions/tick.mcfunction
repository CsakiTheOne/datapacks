# Fletching table

execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:fletching_table run advancement grant @a[distance=0..3] only vd:fletching

execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:fletching_table unless block ~ ~-2 ~ minecraft:hopper run data merge entity @s {Item:{id:"minecraft:arrow",Count:1b}}
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:fletching_table if block ~ ~-2 ~ minecraft:hopper run data merge block ~ ~-2 ~ {Items:[{id:"minecraft:arrow",Count:1b}]}
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] at @s if block ~ ~-1 ~ minecraft:fletching_table if block ~ ~-2 ~ minecraft:hopper run kill @s

# Hopper

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:hopper"}}] at @s if block ~ ~-1 ~ hopper run bossbar set storage players @a[distance=0..16]
execute as @e[type=item_frame] at @s unless block ~ ~-1 ~ hopper run bossbar set storage players
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:hopper"}}] at @s store result bossbar storage value run data get block ~ ~-1 ~ Items[0].Count
