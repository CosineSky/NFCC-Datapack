tellraw @s [{"text":"你已购买","color":"yellow"},{"text":"锁链盔甲","color":"green"},"！"]
tag @s add chainmail
tag @s remove iron
tag @s remove diamond
tag @s remove netherite
advancement revoke @s only game:armor/chainmail