scoreboard objectives add mcr_tick dummy
scoreboard objectives add mcr_versions dummy

scoreboard objectives add mcr_swim dummy
scoreboard objectives add mcr_swim_detect dummy

scoreboard objectives add mcr_sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add mcr_sneak_state minecraft.custom:minecraft.sneak_time
scoreboard objectives add mcr_sneak_detect dummy

scoreboard objectives add mcr_death deathCount

scoreboard objectives add mcr_online dummy

scoreboard objectives add mcr_rng dummy
scoreboard objectives add mcr_const dummy

scoreboard players set #mcr_tick mcr_tick 0
scoreboard players set #mcr_rng_mod mcr_rng 10

execute unless score #mcr_global mcr_online = #mcr_global mcr_online run scoreboard players set #mcr_global mcr_online 0


# create/activate feature is they doesn't exists (compatibility with v2)
execute unless score #mcr_feature mcr_swim_detect = #mcr_feature mcr_swim_detect run scoreboard players set #mcr_feature mcr_swim_detect 1
execute unless score #mcr_feature mcr_sneak_detect = #mcr_feature mcr_sneak_detect run scoreboard players set #mcr_feature mcr_sneak_detect 1

# die, respawn and arriving
execute unless score #mcr_feature mcr_death = #mcr_feature mcr_death run scoreboard players set #mcr_feature mcr_death 1

execute unless score #mcr_feature mcr_online = #mcr_feature mcr_online run scoreboard players set #mcr_feature mcr_online 1

# set version only if not existent. Otherwise, notify that an update is needed
execute unless score #mcr_bootstrap mcr_versions = #mcr_bootstrap mcr_versions run scoreboard players set #mcr_bootstrap mcr_versions 3
execute unless score #mcr_bootstrap mcr_versions matches 3 run tellraw @a ["",{"text":"McRadane's Bootstrap has been upgraded, you need to update. ["},{"text":"Click here","underlined":true,"clickEvent":{"action":"run_command","value":"/function mcr-bootstrap:update"}},{"text":"]"}]

# no update needed, execute children's inits
execute if score #mcr_bootstrap mcr_versions matches 3 run function #main:init