tag @s add muted
tellraw @p "<Nitwit> Hello!"
tellraw @a[distance=0..2] ""
tellraw @p ["",{"text":"     "},{"text":"[greet]","clickEvent":{"action":"run_command","value":"Hello!"}},{"text":"     "},{"text":"[ask for tasks]","clickEvent":{"action":"run_command","value":"/function nitwit:ask"}}]
tellraw @a[distance=0..2] ""
