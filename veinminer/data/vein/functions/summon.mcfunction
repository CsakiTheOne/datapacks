execute if entity @s[scores={vein_coal=1..}] run summon armor_stand ^ ^.2 ^1 {Invisible:1b,NoGravity:1b,Tags:["vein"]}
execute if entity @s[scores={vein_iron=1..}] run summon armor_stand ^ ^.2 ^1 {Invisible:1b,NoGravity:1b,Tags:["vein"]}
execute if entity @s[scores={vein_gold=1..}] run summon armor_stand ^ ^.2 ^1 {Invisible:1b,NoGravity:1b,Tags:["vein"]}
execute if entity @s[scores={vein_lapis=1..}] run summon armor_stand ^ ^.2 ^1 {Invisible:1b,NoGravity:1b,Tags:["vein"]}
execute if entity @s[scores={vein_diamond=1..}] run summon armor_stand ^ ^.2 ^1 {Invisible:1b,NoGravity:1b,Tags:["vein"]}
execute if entity @s[scores={vein_redstone=1..}] run summon armor_stand ^ ^.2 ^1 {Invisible:1b,NoGravity:1b,Tags:["vein"]}
execute if entity @s[scores={vein_emerald=1..}] run summon armor_stand ^ ^.2 ^1 {Invisible:1b,NoGravity:1b,Tags:["vein"]}
execute if entity @s[scores={vein_quartz=1..}] run summon armor_stand ^ ^.2 ^1 {Invisible:1b,NoGravity:1b,Tags:["vein"]}

execute as @e[tag=vein] at @s run summon armor_stand ~ ~1 ~ {Invisible:1b,NoGravity:1b,Tags:["vein_area"]}
execute as @e[tag=vein] at @s run summon armor_stand ~ ~-1 ~ {Invisible:1b,NoGravity:1b,Tags:["vein_area"]}
execute as @e[tag=vein] at @s run summon armor_stand ~1 ~ ~ {Invisible:1b,NoGravity:1b,Tags:["vein_area"]}
execute as @e[tag=vein] at @s run summon armor_stand ~-1 ~ ~ {Invisible:1b,NoGravity:1b,Tags:["vein_area"]}
execute as @e[tag=vein] at @s run summon armor_stand ~ ~ ~1 {Invisible:1b,NoGravity:1b,Tags:["vein_area"]}
execute as @e[tag=vein] at @s run summon armor_stand ~ ~ ~-1 {Invisible:1b,NoGravity:1b,Tags:["vein_area"]}

execute as @e[tag=vein] at @s run tag @e[tag=vein_area] add vein