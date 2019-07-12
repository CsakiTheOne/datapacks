### CRAFTING

# veinminer

execute as @e[type=item,nbt={Item:{id:"minecraft:flint",Count:1b}}] at @s if block ~ ~-1 ~ smithing_table run data merge entity @s {Item:{tag:{display:{Name:"{\"text\":\"Veinminer\"}",Lore:["{\"text\":\"Pickaxe mod\"}"]},HideFlags:1,Enchantments:[{id:"minecraft:efficiency",lvl:1}],Tags:["veinminer"]}}}

# veinchopper

execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] at @s if block ~ ~-1 ~ smithing_table run data merge entity @s {Item:{tag:{display:{Name:"{\"text\":\"Veinchopper\"}",Lore:["{\"text\":\"Axe mod\"}"]},HideFlags:1,Enchantments:[{id:"minecraft:efficiency",lvl:1}],Tags:["veinchopper"]}}}

### IN ACTION

# summon armor stands
execute as @a[nbt={Inventory:[{tag:{Tags:["veinminer"]}}]}] at @s run function vein:mine
execute as @a[nbt={Inventory:[{tag:{Tags:["veinchopper"]}}]}] at @s run function vein:chop

# reset scores
scoreboard players reset @a vein_coal
scoreboard players reset @a vein_iron
scoreboard players reset @a vein_gold
scoreboard players reset @a vein_lapis
scoreboard players reset @a vein_diamond
scoreboard players reset @a vein_redstone
scoreboard players reset @a vein_emerald
scoreboard players reset @a vein_quartz

scoreboard players reset @a vein_chop_wooden
scoreboard players reset @a vein_chop_stone
scoreboard players reset @a vein_chop_iron
scoreboard players reset @a vein_chop_golden
scoreboard players reset @a vein_chop_dia

# check blocks
execute as @e[tag=vein] at @s if block ~-1 ~-1 ~-1 #vein:breakables run setblock ~-1 ~-1 ~-1 air destroy
execute as @e[tag=vein] at @s if block ~-1 ~-1 ~ #vein:breakables run setblock ~-1 ~-1 ~ air destroy
execute as @e[tag=vein] at @s if block ~-1 ~-1 ~1 #vein:breakables run setblock ~-1 ~-1 ~1 air destroy
execute as @e[tag=vein] at @s if block ~ ~-1 ~-1 #vein:breakables run setblock ~ ~-1 ~-1 air destroy
execute as @e[tag=vein] at @s if block ~ ~-1 ~ #vein:breakables run setblock ~ ~-1 ~ air destroy
execute as @e[tag=vein] at @s if block ~ ~-1 ~1 #vein:breakables run setblock ~ ~-1 ~1 air destroy
execute as @e[tag=vein] at @s if block ~1 ~-1 ~-1 #vein:breakables run setblock ~1 ~-1 ~-1 air destroy
execute as @e[tag=vein] at @s if block ~1 ~-1 ~ #vein:breakables run setblock ~1 ~-1 ~ air destroy
execute as @e[tag=vein] at @s if block ~1 ~-1 ~1 #vein:breakables run setblock ~1 ~-1 ~1 air destroy

execute as @e[tag=vein] at @s if block ~-1 ~ ~-1 #vein:breakables run setblock ~-1 ~ ~-1 air destroy
execute as @e[tag=vein] at @s if block ~-1 ~ ~ #vein:breakables run setblock ~-1 ~ ~ air destroy
execute as @e[tag=vein] at @s if block ~-1 ~ ~1 #vein:breakables run setblock ~-1 ~ ~1 air destroy
execute as @e[tag=vein] at @s if block ~ ~ ~-1 #vein:breakables run setblock ~ ~ ~-1 air destroy
execute as @e[tag=vein] at @s if block ~ ~ ~ #vein:breakables run setblock ~ ~ ~ air destroy
execute as @e[tag=vein] at @s if block ~ ~ ~1 #vein:breakables run setblock ~ ~ ~1 air destroy
execute as @e[tag=vein] at @s if block ~1 ~ ~-1 #vein:breakables run setblock ~1 ~ ~-1 air destroy
execute as @e[tag=vein] at @s if block ~1 ~ ~ #vein:breakables run setblock ~1 ~ ~ air destroy
execute as @e[tag=vein] at @s if block ~1 ~ ~1 #vein:breakables run setblock ~1 ~ ~1 air destroy

execute as @e[tag=vein] at @s if block ~-1 ~1 ~-1 #vein:breakables run setblock ~-1 ~1 ~-1 air destroy
execute as @e[tag=vein] at @s if block ~-1 ~1 ~ #vein:breakables run setblock ~-1 ~1 ~ air destroy
execute as @e[tag=vein] at @s if block ~-1 ~1 ~1 #vein:breakables run setblock ~-1 ~1 ~1 air destroy
execute as @e[tag=vein] at @s if block ~ ~1 ~-1 #vein:breakables run setblock ~ ~1 ~-1 air destroy
execute as @e[tag=vein] at @s if block ~ ~1 ~ #vein:breakables run setblock ~ ~1 ~ air destroy
execute as @e[tag=vein] at @s if block ~ ~1 ~1 #vein:breakables run setblock ~ ~1 ~1 air destroy
execute as @e[tag=vein] at @s if block ~1 ~1 ~-1 #vein:breakables run setblock ~1 ~1 ~-1 air destroy
execute as @e[tag=vein] at @s if block ~1 ~1 ~ #vein:breakables run setblock ~1 ~1 ~ air destroy
execute as @e[tag=vein] at @s if block ~1 ~1 ~1 #vein:breakables run setblock ~1 ~1 ~1 air destroy

execute as @e[tag=vein_chop] at @s if block ~ ~ ~ #vein:choppables run setblock ~ ~ ~ air destroy
execute as @e[tag=vein_chop] at @s run tp @s ~ ~.5 ~
execute as @e[tag=vein_chop] at @s if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~-1 ~ air run kill @s

# remove armor stands
kill @e[tag=vein]