# ゲーム開始する
scoreboard players set ゲーム中かどうか sheep_ingame 1

# ノックバック棒を配布
function mofu:sheep_game/items/knockback_stick

# ボスバーを表示
bossbar set sheep:timer visible true

# タブを表示
scoreboard objectives setdisplay sidebar sheepPoint

# 制限時間追加
scoreboard players set 残り時間 sheep_timeCount 600

# 得点をリセット
scoreboard players set 赤チーム sheepPoint 0
scoreboard players set 青チーム sheepPoint 0