tellraw @s {"text": "一番近い青チームの開始地点を削除"}
playsound minecraft:entity.experience_orb.pickup ambient @a[tag=admin] ~ ~ ~

# 一番近いblue_startをキル
kill @e[type=minecraft:armor_stand,tag=blue_start,limit=1,sort=nearest]