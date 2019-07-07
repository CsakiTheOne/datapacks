# setup stuff
tag @e[type=villager,nbt={VillagerData:{profession:"minecraft:nitwit"}}] add nitwit

# greet
execute as @e[tag=nitwit,tag=!muted] at @s if entity @a[distance=0..2] run function nitwit:greet
# reset greeting
execute as @e[tag=nitwit,tag=muted] at @s unless entity @a[distance=0..8] run tag @s remove muted
