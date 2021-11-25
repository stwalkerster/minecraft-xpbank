scoreboard players set @s xpb_bankPoints 0
execute store result score @s xpb_bankPoints run xp query @p points

scoreboard players operation @s xpb_savedXp += @s xpb_bankPoints
xp set @s 0 points
