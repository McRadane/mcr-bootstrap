# get a new seed
execute positioned ~ -1 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mcr_rng_aec"],Age:1}
execute store result score #mcr_global mcr_online run data get entity @e[type=area_effect_cloud,tag=mcr_rng_aec,limit=1] UUIDMost 0.0000000000000028306434
scoreboard players operation @a mcr_online = #mcr_global mcr_online
