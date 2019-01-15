# Detecting player in water
scoreboard players set @a mcr_swim 0
execute as @a at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s mcr_swim 1
execute as @a if score @s mcr_swim matches 1 run function #main:swim-tick
execute as @a if score @s mcr_swim_detect < @s mcr_swim run function #main:swim-begin
execute as @a if score @s mcr_swim_detect > @s mcr_swim run function #main:swim-end
execute as @a run scoreboard players operation @s mcr_swim_detect = @s mcr_swim

# Detecting player sneaking
execute as @a if score @s mcr_sneak_state matches 1.. run function #main:sneak-tick
execute as @a if score @s mcr_sneak_detect < @s mcr_sneak_state run function #main:sneak-begin
execute as @a if score @s mcr_sneak_detect > @s mcr_sneak_state run function #main:sneak-end
execute as @a run scoreboard players operation @s mcr_sneak_detect = @s mcr_sneak_state
scoreboard players set @a mcr_sneak_state 0