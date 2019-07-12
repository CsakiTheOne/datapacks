execute unless entity @p[scores={nitwit_trust=1..}] run scoreboard players set @p nitwit_trust 0
execute if entity @p[scores={nitwit_trust=0}] run give @p written_book{title:"Tasks",author:"Nitwit",resolved:1b,pages:['{"text":"Bring potato"}']}
execute if entity @p[scores={nitwit_trust=1}] run give @p written_book{title:"Tasks",author:"Nitwit",resolved:1b,pages:['{"text":"Bring carrot"}']}
execute if entity @p[scores={nitwit_trust=2}] run give @p written_book{title:"Tasks",author:"Nitwit",resolved:1b,pages:['{"text":"Bring emerald"}']}
execute if entity @p[scores={nitwit_trust=3}] run tellraw @p "<Nitwit> I have no more tasks..."