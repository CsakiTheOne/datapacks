# Hand

execute as @a[nbt={SelectedItem:{id:"minecraft:anvil"}}] at @s run tp @e[type=item,distance=0..5] @s

# Item frame

execute as @e[nbt={Item:{id:"minecraft:anvil"}}] at @s run tp @e[type=item,distance=0..5] @s
