# =========
# 例外を検知
# =========

# すでにゲームがスタートしていたら実行しない
execute if score ゲーム中かどうか sheep_ingame matches 1.. run tellraw @a {"text":"ゲーム中は、ゲームを開始できません","color":"white"}
execute if score ゲーム中かどうか sheep_ingame matches 1.. run return fail

# 青チームが0人
execute unless entity @a[team=mf_blue] run tellraw @a {"text":"青チームにだれもいません","color":"white"}

# 赤チームが0人
execute unless entity @a[team=mf_red] run tellraw @a {"text":"赤チームにだれもいません","color":"white"}

# どちらかのチームが0人ならゲーム開始しない
#execute unless entity @a[team=mf_blue] run return fail
#execute unless entity @a[team=mf_red] run return fail

# =============
# ゲーム開始処理
# =============

# チームごとにテレポート
execute as @a[team=mf_blue] at @s run tp @s @e[tag=blue_start,sort=nearest,limit=1]
execute as @a[team=mf_red] at @s run tp @s @e[tag=red_start,sort=nearest,limit=1]

# ノックバック棒を配布
execute as @a[team=mf_blue] at @s run function mofu:sheep_game/items/knockback_stick
execute as @a[team=mf_red] at @s run function mofu:sheep_game/items/knockback_stick

# ボスバーを表示
bossbar set sheep:timer visible true

# タブを表示
scoreboard objectives setdisplay sidebar sheepPoint

# スコアを表示するディスプレイを表示
function mofu:sheep_game/score_display/spawn_display

# 得点をリセット
scoreboard players set 赤チーム sheepPoint 0
scoreboard players set 青チーム sheepPoint 0

# 制限時間追加
scoreboard players set 残り時間 sheep_timeCount 600

# ゲーム開始する
scoreboard players set ゲーム中かどうか sheep_ingame 1