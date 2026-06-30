# スコアボードを変える
scoreboard players set @s mf_initialized 1

# ↓スコアボードの初期化↓

# ポータル　クールタイムとかリセット
scoreboard players set @a tp_cd 0
scoreboard players set @a tp_lock 1
scoreboard players set @a tp_using 0

# ずっと暗視
effect give @s night_vision infinite 255 true

