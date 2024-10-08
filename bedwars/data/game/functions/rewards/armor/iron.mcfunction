tellraw @s [{"text":"你已购买","color":"yellow"},{"text":"铁盔甲","color":"green"},"！"]
tag @s add iron
tag @s remove chainmail
tag @s remove diamond
tag @s remove netherite
advancement revoke @s only game:armor/iron