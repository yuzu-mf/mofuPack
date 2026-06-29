# 音
execute as @a[team=mf_red] at @s run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5 1
execute as @a[team=mf_blue] at @s run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 0.5 1

# サブタイトル
title @a subtitle [{"score":{"name":"赤チーム","objective":"sheepPoint"}},{"text":" - "},{"score":{"name":"青チーム","objective":"sheepPoint"}}]

# タイトル
execute if score 赤チーム sheepPoint > 青チーム sheepPoint run title @a title {"text":"赤チームの勝利！","color":"red","bold":true}

execute if score 青チーム sheepPoint > 赤チーム sheepPoint run title @a title {"text":"青チームの勝利！","color":"blue","bold":true}

execute if score 赤チーム sheepPoint = 青チーム sheepPoint run title @a title {"text":"引き分け！","color":"white","bold":true}
