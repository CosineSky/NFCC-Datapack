tellraw @s [{"text":"你已购买","color":"yellow"},{"text":"钻石盔甲","color":"green"},"！"]
tag @s add diamond
tag @s remove chainmail
tag @s remove iron
tag @s remove netherite
advancement revoke @s only game:armor/diamond