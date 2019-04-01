# Detecting player in water
scoreboard players set @a mcr_swim 0
execute as @a at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s mcr_swim 1
execute as @a at @s if block ~ ~1 ~ minecraft:water run scoreboard players set @s mcr_swim 1
execute as @a if score @s mcr_swim_detect < @s mcr_swim run function #main:hook-swim-begin
execute as @a if score @s mcr_swim matches 1 run function #main:hook-swim-tick
execute as @a if score @s mcr_swim_detect > @s mcr_swim run function #main:hook-swim-end
execute as @a run scoreboard players operation @s mcr_swim_detect = @s mcr_swim