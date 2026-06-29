tellraw @s {"text": "一番近いゲームリセット地点を削除"}
playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~

# 一番近いgame_resetをキル
kill @e[type=minecraft:armor_stand,tag=game_reset,limit=1,sort=nearest]