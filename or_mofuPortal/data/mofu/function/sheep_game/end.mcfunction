# キル
kill @e[type=sheep,tag=sheep_ball]

# ノックバック棒を消す
clear @a stick

# プレイヤーをスタート地点に戻す
execute as @a[team=mf_blue] at @s run tp @s @e[tag=game_reset,sort=nearest,limit=1]
execute as @a[team=mf_red] at @s run tp @s @e[tag=game_reset,sort=nearest,limit=1]

# ボスバーを非表示
bossbar set sheep:timer visible false

# リザルト表示
function mofu:sheep_game/result_title

# ゲーム終了にする
scoreboard players set ゲーム中かどうか sheep_ingame 0

# チームを外す
execute as @a[team=mf_red] at @s run team leave @s
execute as @a[team=mf_blue] at @s run team leave @s

# 5秒待つ
schedule function mofu:sheep_game/after_end 5s