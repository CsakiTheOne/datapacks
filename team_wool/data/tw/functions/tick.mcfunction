# spawn
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:white_bed"}}] at @s if entity @a[distance=0..1] run function tw:spawn
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:white_bed"}}] at @s if entity @a[distance=2..] run tag @a[distance=2..] remove tw_tell
# team
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:red_wool"}}] at @s if entity @a[distance=0..1,team=!red] run function tw:join_red
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:yellow_wool"}}] at @s if entity @a[distance=0..1,team=!yellow] run function tw:join_yellow
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:green_wool"}}] at @s if entity @a[distance=0..1,team=!green] run function tw:join_green
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:blue_wool"}}] at @s if entity @a[distance=0..1,team=!blue] run function tw:join_blue
# team exit
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:white_wool"}}] at @s if entity @a[distance=0..1] run team leave @a[distance=0..1]
