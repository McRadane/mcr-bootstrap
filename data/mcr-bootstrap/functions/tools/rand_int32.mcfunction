#random generator by Kikipunk

summon area_effect_cloud ~ ~1 ~ {Tags:["mcr_rng_aec"],Age:1}
execute store result score @s mcr_rng run data get entity @e[type=area_effect_cloud,tag=mcr_random,limit=1] UUIDMost 0.00000000023283064
scoreboard players operation @s mcr_rng %= #mcr_int32 mcr_const