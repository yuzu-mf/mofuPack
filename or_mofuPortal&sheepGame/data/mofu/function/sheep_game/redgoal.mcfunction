execute if entity @s[tag=point1] run scoreboard players add 赤チーム sheepPoint 1

execute if entity @s[tag=point3] run scoreboard players add 赤チーム sheepPoint 3

execute if entity @s[tag=point7] run scoreboard players add 赤チーム sheepPoint 7

# ディスプレイの更新
function mofu:sheep_game/score_display/update_display

# ゴールしたらキル
kill @s

# 見た目
playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 0.5 1