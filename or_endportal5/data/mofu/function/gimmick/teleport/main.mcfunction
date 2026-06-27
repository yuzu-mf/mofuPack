# クールタイム減少
scoreboard players remove @s[scores={tp_cd=1..}] tp_cd 1

# ポータルから離れたらロック解除
execute unless entity @e[type=armor_stand,distance=..1] run scoreboard players set @s tp_lock 0

# プレイヤーがスペクテイターだったらここで終了
execute if entity @s[gamemode=spectator] run return 1

# クールタイム中＆誰もテレポートしていない状態だったらなんもしない
execute if score @s tp_cd matches 1.. run return 1
execute if score @s tp_using matches 1.. run return 1

# ピンクポータル判定
execute if entity @e[type=armor_stand,tag=pink_portal,distance=..0.7,limit=1] run function mofu:gimmick/teleport/pink

# グレーポータル判定
execute if entity @e[type=armor_stand,tag=gray_portal,distance=..0.7,limit=1] run function mofu:gimmick/teleport/gray