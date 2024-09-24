# update number of ticks
scoreboard players add timer cc_global 1

# count mobs
scoreboard players set surface_creepers cc_global 0
scoreboard players set cave_creepers cc_global 0
scoreboard players set other_mobs cc_global 0

execute as @e[type=creeper,has_property={rufusatticus:is_surface=true}] run scoreboard players add surface_creepers cc_global 1
execute as @e[type=creeper,has_property={rufusatticus:is_surface=false}] run scoreboard players add cave_creepers cc_global 1
execute as @e[type=!creeper,family=monster] run scoreboard players add other_mobs cc_global 1

execute as @e[type=creeper,has_property={rufusatticus:is_surface=true},tag=!seen] run scoreboard players add tot_surface_creepers cc_global 1
execute as @e[type=creeper,has_property={rufusatticus:is_surface=false},tag=!seen] run scoreboard players add tot_cave_creepers cc_global 1
execute as @e[type=!creeper,family=monster,tag=!seen] run scoreboard players add tot_other_mobs cc_global 1

# Mark mobs
tag @e[family=monster,tag=!seen] add seen

# Reset Results
scoreboard players reset * cc_results

# Update Time
scoreboard players operation TimerTicks cc_results = timer cc_global
scoreboard players operation TimerMinutes cc_results = timer cc_global
scoreboard players operation TimerMinutes cc_results /= k_1200 cc_global

# Update Counts
scoreboard players operation SurfCreeperCur cc_results = surface_creepers cc_global
scoreboard players operation CaveCreeperCur cc_results = cave_creepers cc_global
scoreboard players operation OtherMonsterCur cc_results = other_mobs cc_global

scoreboard players operation SurfCreeperTot cc_results = tot_surface_creepers cc_global
scoreboard players operation CaveCreeperTot cc_results = tot_cave_creepers cc_global
scoreboard players operation OtherMonsterTot cc_results = tot_other_mobs cc_global
