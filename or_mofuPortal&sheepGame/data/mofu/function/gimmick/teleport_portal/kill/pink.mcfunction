tellraw @s {"text": "一番近いpink_portalを削除"}
playsound minecraft:entity.experience_orb.pickup ambient @a[tag=admin] ~ ~ ~

# 一番近いポータルをキル
kill @e[type=minecraft:armor_stand,tag=pink_portal,limit=1,sort=nearest]