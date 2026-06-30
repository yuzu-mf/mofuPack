# 安全装置
execute as @a at @s if block ~ ~-1 ~ minecraft:blue_wool run team leave @s

# メッセージを送信
execute as @a at @s if block ~ ~-1 ~ minecraft:red_wool run tellraw @s [{"color":"white","italic":false,"selector":"@s"},{"color":"white","text":"が、"},{"color":"red","text":"赤チーム"},{"color":"white","text":"に参加した！"}]

# 赤色の羊毛に乗っているプレイヤーは赤チームに入る
execute as @a at @s if block ~ ~-1 ~ minecraft:red_wool run team join mf_red @s