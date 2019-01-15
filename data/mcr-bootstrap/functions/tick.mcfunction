# Detecting player in water
scoreboard players set @a mcr_swim 0
execute as @a at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s mcr_swim 1
execute as @a at @s if block ~ ~1 ~ minecraft:water run scoreboard players set @s mcr_swim 1
execute as @a if score @s mcr_swim_detect < @s mcr_swim run function #main:hook-swim-begin
execute as @a if score @s mcr_swim matches 1 run function #main:hook-swim-tick
execute as @a if score @s mcr_swim_detect > @s mcr_swim run function #main:hook-swim-end
execute as @a run scoreboard players operation @s mcr_swim_detect = @s mcr_swim

# Detecting player sneaking
execute as @a if score @s mcr_sneak_detect < @s mcr_sneak_state run function #main:hook-sneak-begin
execute as @a if score @s mcr_sneak_state matches 1.. run function #main:hook-sneak-tick
execute as @a if score @s mcr_sneak_detect > @s mcr_sneak_state run function #main:hook-sneak-end
execute as @a run scoreboard players operation @s mcr_sneak_detect = @s mcr_sneak_state
scoreboard players set @a mcr_sneak_state 0

# Detecting when a player die
execute as @a if score @s mcr_death matches 1.. run function #main:hook-death
execute as @a if score @s mcr_death matches 1.. run scoreboard players set @s mcr_death -1

# Detecting when a player respawn
execute as @e[type=player] if score @s mcr_death matches -1 run function #main:hook-respawn
execute as @e[type=player] if score @s mcr_death matches -1 run scoreboard players set @s mcr_death 0

# Detecting when a new player arrive on the server
execute as @a unless score @s mcr_death = @s mcr_death run function #main:hook-newplayer
execute as @a unless score @s mcr_death = @s mcr_death run scoreboard players set @s mcr_death 0