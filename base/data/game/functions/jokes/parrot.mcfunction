tag @r add parrot_joke
execute as @a[tag=parrot_joke] at @s run summon parrot ~ ~1 ~
execute as @a[tag=parrot_joke] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":"'s "},{"text":"Parrot","color":"aqua"},{"text":"> "},{"text":"咕咕咕","color":"green","bold":true}]
tag @a remove parrot_joke
schedule function game:jokes/remove_parrot 5s