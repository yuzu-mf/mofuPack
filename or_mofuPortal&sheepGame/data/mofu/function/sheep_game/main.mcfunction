# ボスバー更新
execute store result bossbar sheep:timer value run scoreboard players get 残り時間 sheep_timeCount

# 制限時間減少
execute if score 残り時間 sheep_timeCount matches 1.. run scoreboard players remove 残り時間 sheep_timeCount 1

# ひつじがドロップするexpオーブを消す
execute as @e[type=experience_orb] at @s run kill @s

# 現在のひつじ（ボール）の数を数える
execute store result score 残りのひつじの数 sheep_count if entity @e[type=sheep,tag=sheep_ball]

# ひつじが0匹になったら再召喚する
execute if score 残りのひつじの数 sheep_count matches 0 run function mofu:sheep_game/summon

# 制限時間が0になったらゲーム終了
execute if score 残り時間 sheep_timeCount matches 0 run function mofu:sheep_game/end

# 各ひつじでゴール処理実行
execute as @e[type=sheep,tag=sheep_ball] at @s run function mofu:sheep_game/check_goal