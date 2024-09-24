# Setup Scoreboards
scoreboard objectives add cc_global dummy
scoreboard objectives add cc_results dummy "  CC RESULTS  "
scoreboard objectives setdisplay sidebar cc_results
scoreboard objectives setdisplay list cc_results

# Reset
scoreboard players reset * cc_global
scoreboard players reset * cc_results

# Setup the State to Off
scoreboard players set cc_state cc_global 0

# Setup Constants
scoreboard players set k_1200 cc_global 1200

# Setup Stats
scoreboard players set timer cc_global 0
scoreboard players set surface_creepers cc_global 0
scoreboard players set cave_creepers cc_global 0
scoreboard players set other_mobs cc_global 0
scoreboard players set tot_surface_creepers cc_global 0
scoreboard players set tot_cave_creepers cc_global 0
scoreboard players set tot_other_mobs cc_global 0

gamerule domobspawning false
say Mob spawning turned off
