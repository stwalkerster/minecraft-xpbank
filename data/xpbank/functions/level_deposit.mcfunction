scoreboard players set @s xpb_bankPoints 0

execute if score @s xpb_bankLevel matches 1..15 run function xpbank:calc_lowlevel
execute if score @s xpb_bankLevel matches 16..30 run function xpbank:calc_midlevel
execute if score @s xpb_bankLevel matches 31.. run function xpbank:calc_highlevel

xp add @s -1 levels
scoreboard players remove @s xpb_bankLevel 1
scoreboard players operation @s xpb_savedXp += @s xpb_bankPoints

