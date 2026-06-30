# ゲーム中じゃなかったらひつじを消す
execute if score ゲーム中かどうか sheep_ingame matches 0 run kill @e[type=sheep,tag=sheep_ball]

# ゲーム中じゃなかったら実行しない
execute if score ゲーム中かどうか sheep_ingame matches 0 run return 1

# ひつじサッカーのメイン処理
function mofu:sheep_game/main
