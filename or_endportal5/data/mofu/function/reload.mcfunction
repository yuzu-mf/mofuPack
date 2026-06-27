say reload!

# スコアボード
scoreboard objectives add tp_cd dummy
scoreboard objectives add tp_lock dummy
scoreboard objectives add tp_using dummy
scoreboard objectives add mf_initialized dummy

# 初期化してない状態へもどす
scoreboard players set @a mf_initialized 0