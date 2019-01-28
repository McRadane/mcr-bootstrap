scoreboard objectives add mcr_tick dummy
scoreboard objectives add mcr_versions dummy

scoreboard objectives add mcr_swim dummy
scoreboard objectives add mcr_swim_detect dummy

scoreboard objectives add mcr_sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add mcr_sneak_state minecraft.custom:minecraft.sneak_time
scoreboard objectives add mcr_sneak_detect dummy

scoreboard objectives add mcr_death deathCount
scoreboard objectives add mcr_death_time dummy

scoreboard players set #mcr_tick mcr_tick 0
scoreboard players set #mcr_bootstrap mcr_versions 2

function #main:init
function #main:init.2