spawnpoint @a[distance=0..1] ~ ~ ~
tellraw @a[distance=0..1,tag=!tw_tell] "Spawnpoint set!"
tag @a[distance=0..1] add tw_tell
