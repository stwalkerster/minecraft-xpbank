
scoreboard players remove @s xpb_recurseCount 1
execute if score @s xpb_bankLevel matches 1.. run function xpbank:level_deposit
execute if score @s xpb_recurseCount matches 1.. run function xpbank:recursive_deposit
