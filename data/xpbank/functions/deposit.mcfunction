scoreboard players operation @s xpb_bankLevel = @s xpb_playerLevel

scoreboard players operation @s xpb_recurseCount = #xpb_depositLevels xpb_config
execute if score @s xpb_recurseCount matches 0 run scoreboard players set @s xpb_recurseCount 1

function xpbank:points_deposit

function xpbank:recursive_deposit


scoreboard players reset @s xpb_bankLevel
scoreboard players reset @s xpb_bankPoints
scoreboard players reset @s xpb_recurseCount

function xpbank:balance