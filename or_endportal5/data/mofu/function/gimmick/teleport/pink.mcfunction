# 前回のポータルから離れてないなら何もしない
execute if score @s tp_lock matches 1 run return 1

# テレポートを使用中にする
scoreboard players add @a tp_using 1

# 対象プレイヤー固定
tag @s add tp_exec

# 現在触れているポータルを除外するためのタグ
execute as @e[type=armor_stand,tag=pink_portal,distance=..0.7,limit=1,sort=nearest] run tag @s add current_pink

# 違うエリアのポータルを除外するためのタグ
# execute as @e[type=armor_stand,tag=pink_portal,distance=30..] run tag @s add far_pink
execute as @e[tag=current_pink] at @s run tag @e[type=armor_stand,tag=pink_portal,distance=30..] add far_pink

# ランダムな場所へテレポート
execute as @e[type=armor_stand,tag=pink_portal,tag=!current_pink,tag=!far_pink,limit=1,sort=random] run function mofu:gimmick/teleport/tp

# タグ消し
tag @e[tag=current_pink] remove current_pink
tag @e[tag=far_pink] remove far_pink
tag @s remove tp_exec
