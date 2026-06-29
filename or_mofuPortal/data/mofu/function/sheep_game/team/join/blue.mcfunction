# 安全装置
team leave @a[team=mf_red]
team leave @a[team=mf_blue]

# メッセージを送信
execute as @a at @s if block ~ ~-1 ~ minecraft:blue_wool run tellraw @s [{"color":"white","italic":false,"selector":"@s"},{"color":"white","text":"が、"},{"color":"blue","text":"青チーム"},{"color":"white","text":"に参加した！"}]

# 青色の羊毛に乗っているプレイヤーは青チームに入る
execute as @a at @s if block ~ ~-1 ~ minecraft:blue_wool run team join mf_blue @s