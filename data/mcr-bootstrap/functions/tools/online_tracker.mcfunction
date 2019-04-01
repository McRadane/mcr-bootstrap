# get a new seed

execute as @p run tag @s add mcr_tag_ot
execute as @e[tag=mcr_tag_ot] run function mcr-bootstrap:tools/rand_int32
scoreboard players operation #mcr_global mcr_online = @e[tag=mcr_tag_ot] mcr_rng
scoreboard players operation @a mcr_online = #mcr_global mcr_online
tag @e[tag=mcr_tag_ot] remove mcr_tag_ot
