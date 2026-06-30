tellraw @s {"text": "一番近いsheep_summonerを削除"}
playsound minecraft:entity.experience_orb.pickup ambient @a[tag=admin] ~ ~ ~

# 一番近いsheep_summonerをキル
kill @e[type=minecraft:armor_stand,tag=sheep_summoner,limit=1,sort=nearest]