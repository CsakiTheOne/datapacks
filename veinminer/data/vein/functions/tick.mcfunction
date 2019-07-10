### CRAFTING

execute as @a[nbt={Inventory:[{id:"minecraft:bat_spawn_egg"}]}] run function vein:give_mod
clear @a[nbt={Inventory:[{id:"minecraft:flint"}]}] bat_spawn_egg

### IN ACTION

# summon armor stands
execute as @a[nbt={Inventory:[{tag:{display:{Name:"\"Veinminer\"",Lore:["{\"text\":\"Pickaxe mod\"}"]}}}]}] at @s run function vein:summon

# reset scores
scoreboard players reset @a vein_coal
scoreboard players reset @a vein_iron
scoreboard players reset @a vein_gold
scoreboard players reset @a vein_lapis
scoreboard players reset @a vein_diamond
scoreboard players reset @a vein_redstone
scoreboard players reset @a vein_emerald
scoreboard players reset @a vein_quartz

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

# remove armor stands
kill @e[tag=vein]