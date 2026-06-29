# ポイント加算
scoreboard players add 青チーム sheepPoint 1

# ディスプレイの更新
function mofu:sheep_game/score_display/update_display

# ゴールしたらキル
kill @s

# 見た目
playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ 0.5 1