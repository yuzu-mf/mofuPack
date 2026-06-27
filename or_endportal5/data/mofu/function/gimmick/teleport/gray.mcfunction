# 前回のポータルから離れてないなら何もしない
execute if score @s tp_lock matches 1 run return 1

# テレポートを使用中にする
scoreboard players add @a tp_using 1

# 対象プレイヤー固定
tag @s add tp_exec

# 現在触れているポータルを除外するためのタグ
execute as @e[type=armor_stand,tag=gray_portal,distance=..0.7,limit=1,sort=nearest] run tag @s add current_gray

# 違うエリアのポータルを除外するためのタグ
# execute as @e[type=armor_stand,tag=gray_portal,distance=30..] run tag @s add far_gray
execute as @e[tag=current_gray] at @s run tag @e[type=armor_stand,tag=gray_portal,distance=30..] add far_gray

# ランダムな場所へテレポート
execute as @e[type=armor_stand,tag=gray_portal,tag=!current_gray,tag=!far_gray,limit=1,sort=random] run function mofu:gimmick/teleport/tp

# タグ消し
tag @e[tag=current_gray] remove current_gray
tag @e[tag=far_gray] remove far_gray
tag @s remove tp_exec
