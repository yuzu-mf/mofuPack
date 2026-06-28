# キル
kill @e[type=sheep,tag=sheep_ball]

# ノックバック棒を消す
clear @a stick

# ボスバーを非表示
bossbar set sheep:timer visible false

# ゲーム終了にする
scoreboard players set ゲーム中かどうか sheep_ingame 0