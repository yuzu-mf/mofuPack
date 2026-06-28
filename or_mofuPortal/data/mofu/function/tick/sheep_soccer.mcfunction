# ボスバー
execute store result bossbar sheep:timer value run scoreboard players get 残り時間 sheep_timeCount

# ゲーム中じゃなかったらひつじを消す
execute if score ゲーム中かどうか sheep_ingame matches 0 run kill @e[type=sheep,tag=sheep_ball]

# ゲーム中じゃなかったら実行しない
execute if score ゲーム中かどうか sheep_ingame matches 0 run return 1

# 制限時間減少
execute if score 残り時間 sheep_timeCount matches 1.. run scoreboard players remove 残り時間 sheep_timeCount 1

# 各ひつじでゴール処理実行
execute as @e[type=sheep,tag=sheep_ball] at @s run function mofu:sheep_game/main

# 現在のひつじ（ボール）の数を数える
execute store result score 残りのひつじの数 sheep_count if entity @e[type=sheep,tag=sheep_ball]

# ひつじが0匹になったら再召喚する
execute if score 残りのひつじの数 sheep_count matches 0 run function mofu:sheep_game/summon

# 制限時間が0になったらゲーム終了
execute if score 残り時間 sheep_timeCount matches 0 run function mofu:sheep_game/end