say reload!

# スコアボード削除
scoreboard objectives remove tp_cd
scoreboard objectives remove tp_lock
scoreboard objectives remove tp_using
scoreboard objectives remove mf_initialized
scoreboard objectives remove sheep_timeCount
scoreboard objectives remove sheepPoint
scoreboard objectives remove sheep_count
scoreboard objectives remove sheep_ingame

# スコアボード作成
scoreboard objectives add tp_cd dummy
scoreboard objectives add tp_lock dummy
scoreboard objectives add tp_using dummy
scoreboard objectives add mf_initialized dummy
scoreboard objectives add sheep_timeCount dummy
scoreboard objectives add sheepPoint dummy "＜ひつじWorldCup＞"
scoreboard objectives add sheep_count dummy
scoreboard objectives add sheep_ingame dummy

# ひつじWorldCup　ポイントとかリセット
scoreboard players set 赤チーム sheepPoint 0
scoreboard players set 青チーム sheepPoint 0
scoreboard players set 残り時間 sheep_timeCount 0
scoreboard players set ゲーム中かどうか sheep_ingame 0

# ひつじWorldCup  ボスバー
bossbar add sheep:timer "＜ひつじWorldCup 残り時間＞"
bossbar set sheep:timer max 600
bossbar set sheep:timer value 600
bossbar set sheep:timer players @a
bossbar set sheep:timer visible false

# チーム削除
team remove mf_red
team remove mf_blue
team leave @a[team=mf_red]
team leave @a[team=mf_blue]

# チーム作成
team add mf_red "赤チーム"
team add mf_blue "青チーム"

# 初期化してない状態へもどす
scoreboard players set @a mf_initialized 0