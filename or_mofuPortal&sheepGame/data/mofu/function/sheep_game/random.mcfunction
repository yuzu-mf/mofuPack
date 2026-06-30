# ランダム抽選
execute store result score #rand sheep_random run random value 0..9

# ひつじ召喚（中：60%）
execute if score #rand sheep_random matches 0..5 run function mofu:sheep_game/summon_sheep/sheep_medium

# ひつじ召喚（大：20%）
execute if score #rand sheep_random matches 6..7 run function mofu:sheep_game/summon_sheep/sheep_tall

# ひつじ召喚（小：20%）
execute if score #rand sheep_random matches 8..9 run function mofu:sheep_game/summon_sheep/sheep_small