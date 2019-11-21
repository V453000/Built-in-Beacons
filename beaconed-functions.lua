global_beacon_transmission_effect = data.raw["beacon"]["beacon"].distribution_effectivity --or 0
global_beacon_module_slots = data.raw["beacon"]["beacon"].module_specification.module_slots --or 0
global_beacon_drain = data.raw["beacon"]["beacon"].energy_usage -- or 0
global_speed_module_1_speed_bonus = data.raw["module"]["speed-module"].effect.speed --or 0
global_speed_module_2_speed_bonus = data.raw["module"]["speed-module-2"].effect.speed --or 0
global_speed_module_3_speed_bonus = data.raw["module"]["speed-module-3"].effect.speed --or 0
global_productivity_module_1_speed_bonus = data.raw["module"]["productivity-module"].effect.speed --or 0
global_productivity_module_2_speed_bonus = data.raw["module"]["productivity-module-2"].effect.speed --or 0
global_productivity_module_3_speed_bonus = data.raw["module"]["productivity-module-3"].effect.speed --or 0
global_speed_module_1_consumption_bonus = data.raw["module"]["speed-module"].effect.speed --or 0
global_speed_module_2_consumption_bonus = data.raw["module"]["speed-module-2"].effect.speed --or 0
global_speed_module_3_consumption_bonus = data.raw["module"]["speed-module-3"].effect.speed --or 0
global_productivity_module_1_consumption_bonus = data.raw["module"]["productivity-module"].effect.consumption --or 0
global_productivity_module_2_consumption_bonus = data.raw["module"]["productivity-module-2"].effect.consumption --or 0
global_productivity_module_3_consumption_bonus = data.raw["module"]["productivity-module-3"].effect.consumption --or 0

global_assembling_machine_beacon_count    = 12
global_electric_furnace_beacon_count      = 12
global_lab_beacon_count                   = 12
global_oil_refinery_beacon_count          = 16
global_chemical_plant_beacon_count        = 12
global_centrifuge_beacon_count            = 12
global_rocket_silo_beacon_count           = 20
global_electric_mining_drill_beacon_count = 4
global_pumpjack_beacon_count              = 4

function beaconed_crafting_speed(params)
  local machine_crafting_speed     = params.machine_crafting_speed or 1
  local machine_module_slots       = params.module_slots or 4
  local beacon_count               = params.beacon_count or 12
  local beacon_effect              = params.beacon_effect or 0.5
  local beacon_module_slots        = params.beacon_module_slots or 2
  local beacon_module_speed_bonus  = params.beacon_module_speed_bonus or 0.5
  local machine_module_speed_bonus = params.machine_module_speed_bonus or -0.15

  local beacon_speed_effect         = beacon_count * beacon_module_speed_bonus * beacon_effect * beacon_module_slots
  local machine_module_speed_effect = machine_module_slots * machine_module_speed_bonus
  local speed_multiplier            = 1 + (machine_module_speed_effect + beacon_speed_effect)/100
  local beaconed_crafting_speed     = machine_crafting_speed * speed_multiplier
  --machine_crafting_speed * (1 + (( (machine_module_slots * machine_module_speed_bonus) + (beacon_count*beacon_module_speed_bonus*beacon_effect*beacon_module_slots) )/100))))
  return beaconed_cracting_speed
end