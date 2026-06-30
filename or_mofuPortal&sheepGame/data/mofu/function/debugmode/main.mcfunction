# debugじゃなければ終了
execute unless entity @s[tag=debug] run return 1

# デバッグモード処理
execute as @e[tag=pink_portal] at @s run particle minecraft:dust{color:[1,0,0],scale:1} ~ ~1 ~ 0 0 0 1 1 force @a[tag=debug]
execute as @e[tag=gray_portal] at @s run particle minecraft:dust{color:[0,0,0],scale:1} ~ ~1 ~ 0 0 0 1 1 force @a[tag=debug]
execute as @e[tag=sheep_summoner] at @s run particle minecraft:dust{color:[0,1,1],scale:1} ~ ~1 ~ 0 0 0 1 1 force @a[tag=debug]
execute as @e[tag=red_start] at @s run particle minecraft:dust{color:[1,0,0],scale:1} ~ ~1 ~ 0 0 0 1 1 force @a[tag=debug]
execute as @e[tag=blue_start] at @s run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~1 ~ 0 0 0 1 1 force @a[tag=debug]
execute as @e[tag=game_reset] at @s run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~1 ~ 0 0 0 1 1 force @a[tag=debug]
