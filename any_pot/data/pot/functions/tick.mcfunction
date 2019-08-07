# break
execute as @e[tag=pot] at @s unless block ~ ~1 ~ flower_pot run summon item ~ ~.5 ~ {Item:{id:"minecraft:stone",Count:1},Tags:["pot_break"]}
execute as @e[tag=pot_break] at @s run data modify entity @s Item set from entity @e[tag=pot,sort=nearest,limit=1] HandItems[0]
execute as @e[tag=pot] at @s unless block ~ ~1 ~ flower_pot run kill @s

# modify item
execute as @e[type=item] at @s if entity @e[tag=pot,distance=0..1,nbt=!{HandItems:[{Count:1b},{}]}] run tag @s add pot_i
execute as @e[tag=pot_i] at @s if entity @e[tag=pot,distance=0..1,nbt={HandItems:[{Count:1b},{}]}] run kill @s

# summon armor stand
execute as @e[tag=pot_creator] at @s unless entity @e[tag=pot,distance=0..2] run summon armor_stand ~.2 ~1.6 ~-.3 {Invisible:1,NoGravity:1,ShowArms:1,Small:1,Pose:{RightArm:[270f,0f,0f]},Tags:["pot"]}
team join noCollision @e[tag=pot]

# kill shulker
tp @e[tag=pot_creator] ~ -1 ~
kill @e[tag=pot_creator]

# set item
execute as @e[tag=pot] at @s if block ~ ~1 ~ flower_pot run data modify entity @s HandItems[0] set from entity @e[tag=pot_i,distance=0..1,limit=1] Item

# summon shulker
execute as @e[type=item] at @s if block ~ ~ ~ flower_pot unless entity @e[tag=pot,distance=0..2] run summon shulker ~ ~-2 ~ {NoAI:1,Tags:["pot_creator"]}
