execute as @a[scores={xpb_withdraw=1..}] run function xpbank:trigger_withdraw
scoreboard players reset @a xpb_withdraw
execute if score #xpb_mobileBanking xpb_config matches 1 run scoreboard players enable @a xpb_withdraw

execute as @a[scores={xpb_deposit=1..}] run function xpbank:trigger_deposit
scoreboard players reset @a xpb_deposit
execute if score #xpb_mobileBanking xpb_config matches 1 run scoreboard players enable @a xpb_deposit

execute as @a[scores={xpb_balance=1..}] run function xpbank:trigger_balance
scoreboard players reset @a xpb_balance
execute if score #xpb_mobileBanking xpb_config matches 1 run scoreboard players enable @a xpb_balance
