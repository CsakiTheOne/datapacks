# summon pig
execute as @a at @s if block ~ ~ ~ stonecutter unless entity @e[distance=0..2,tag=asscutter] run function assc:summon
# kill pig
execute as @a at @s if entity @e[tag=asscutter,distance=3..10] run function assc:kill