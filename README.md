# Experience Banking datapack for Minecraft 1.17

This is a datapack which allows you to "bank" levels of experience for safe-keeping.

## Installation

```
cd  ~/.minecraft/saves/MY_WORLD/datapacks/
git clone git@github.com:stwalkerster/minecraft-xpbank.git xpbank
```

## Usage

You have two options. You can either use command blocks to call into the datapack code, or you can use triggers. The method you choose will determine if you want to support "mobile banking" or not.

### "Mobile banking"
Mobile banking must be enabled before it can be used.
* To view your balance, run `/trigger xpb_balance`
* To make a deposit of any levels, run `/trigger xpb_deposit`
* To make a withdrawal, run `/trigger xpb_withdraw`

### Branch banking only:
Configure three command blocks to run the following commands:
* Balance enquiries: `execute as @p run function xpbank:balance`
* Deposits: `execute as @p run function xpbank:deposit`
* Withdrawals: `execute as @p run function xpbank:withdraw`

Activate these command blocks with a redstone signal. Beware - these command blocks will act on the closest player to them when they are powered by redstone; if branch banking is used, it's probably worth ensuring that your branch design defends against the wrong player being targeted.

## Configuration

* Disable mobile banking: `/scoreboard players set #xpb_mobileBanking xpb_config 0`
* Enable mobile banking: `/scoreboard players set #xpb_mobileBanking xpb_config 1`

* Configure number of levels to deposit at once (eg: 5; note that any progress between levels is automatically saved): `/scoreboard players set #xpb_depositLevels xpb_config 5`