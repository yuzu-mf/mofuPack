# 安全装置
team leave @a[team=mf_red]
team leave @a[team=mf_blue]

# 赤色の羊毛に乗っているプレイヤーは赤チームに入る
execute as @a at @s if block ~ ~-1 ~ minecraft:red_wool run team join mf_red @s