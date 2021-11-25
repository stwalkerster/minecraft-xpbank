scoreboard players enable @a xpb_withdraw
execute as @a[scores={xpb_withdraw=1..}] run function xpbank:withdraw
scoreboard players reset @a[scores={xpb_withdraw=1..}] xpb_withdraw

scoreboard players enable @a xpb_deposit
execute as @a[scores={xpb_deposit=1..}] run function xpbank:deposit
scoreboard players reset @a[scores={xpb_deposit=1..}] xpb_deposit

scoreboard players enable @a xpb_balance
execute as @a[scores={xpb_balance=1..}] run function xpbank:balance
scoreboard players reset @a[scores={xpb_balance=1..}] xpb_balance
