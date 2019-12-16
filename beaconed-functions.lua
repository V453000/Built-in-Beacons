global_beacon_transmission_effect = data.raw["beacon"]["beacon"].distribution_effectivity --or 0
global_beacon_module_slots = data.raw["beacon"]["beacon"].module_specification.module_slots --or 0
global_beacon_drain_kw = data.raw["beacon"]["beacon"].energy_usage -- or 0
global_beacon_drain_nokw   = string.gsub(global_beacon_drain_kw, "kW", "")
global_beacon_drain = tonumber(global_beacon_drain_nokw, 10)
global_speed_module_1_speed_bonus = data.raw["module"]["speed-module"].effect.speed.bonus --or 0
global_speed_module_2_speed_bonus = data.raw["module"]["speed-module-2"].effect.speed.bonus --or 0
global_speed_module_3_speed_bonus = data.raw["module"]["speed-module-3"].effect.speed.bonus --or 0
global_productivity_module_1_speed_bonus = data.raw["module"]["productivity-module"].effect.speed.bonus --or 0
global_productivity_module_2_speed_bonus = data.raw["module"]["productivity-module-2"].effect.speed.bonus --or 0
global_productivity_module_3_speed_bonus = data.raw["module"]["productivity-module-3"].effect.speed.bonus --or 0
global_speed_module_1_energy_usage_bonus = data.raw["module"]["speed-module"].effect.consumption.bonus --or 0
global_speed_module_2_energy_usage_bonus = data.raw["module"]["speed-module-2"].effect.consumption.bonus --or 0
global_speed_module_3_energy_usage_bonus = data.raw["module"]["speed-module-3"].effect.consumption.bonus --or 0
global_productivity_module_1_energy_usage_bonus = data.raw["module"]["productivity-module"].effect.consumption.bonus --or 0
global_productivity_module_2_energy_usage_bonus = data.raw["module"]["productivity-module-2"].effect.consumption.bonus --or 0
global_productivity_module_3_energy_usage_bonus = data.raw["module"]["productivity-module-3"].effect.consumption.bonus --or 0

global_assembling_machine_beacon_count    = 12
global_electric_furnace_beacon_count      = 12
global_lab_beacon_count                   = 12
global_oil_refinery_beacon_count          = 16
global_chemical_plant_beacon_count        = 12
global_centrifuge_beacon_count            = 12
global_rocket_silo_beacon_count           = 20
global_electric_mining_drill_beacon_count = 4
global_pumpjack_beacon_count              = 4

global_assembling_machine_average_beacon_count    = 7--12
global_electric_furnace_average_beacon_count      = 7--12
global_lab_average_beacon_count                   = 7--12
global_oil_refinery_average_beacon_count          = 10--16
global_chemical_plant_average_beacon_count        = 7--12
global_centrifuge_average_beacon_count            = 7--12
global_rocket_silo_average_beacon_count           = 20--20
global_electric_mining_drill_average_beacon_count = 1--4
global_pumpjack_average_beacon_count              = 1--4

beaconed_assembling_machine_1_tint          = {0.24, 0.12  , 0   , 0}
beaconed_assembling_machine_2_tint          = {0.3 , 0.2625, 0   , 0}
beaconed_assembling_machine_3_tint          = {0.3 , 0.375 , 0   , 0}
maxspeed_beaconed_assembling_machine_3_tint = {0.05, 0.175 , 0.25, 0}
beaconed_centrifuge_1_tint                  = {0.4*0.7, 0.2*0.7, 0, 0}
beaconed_centrifuge_2_tint                  = {0.4*0.65, 0.4*0.65, 0, 0}
beaconed_centrifuge_3_tint                  = {0.48*0.6, 0.6*0.6, 0, 0}
beaconed_chemical_plant_1_tint              = {0.4,  0.2, 0, 0}
beaconed_chemical_plant_2_tint              = {0.4,  0.4, 0, 0}
beaconed_chemical_plant_3_tint              = {0.48, 0.6, 0, 0}
beaconed_electric_furnace_1_tint            = {0.4,  0.2, 0, 0}
beaconed_electric_furnace_2_tint            = {0.4,  0.4, 0, 0}
beaconed_electric_furnace_3_tint            = {0.48, 0.6, 0, 0}
beaconed_electric_mining_drill_1_tint       = {0.4*0.75, 0.2*0.75, 0, 0}
beaconed_electric_mining_drill_2_tint       = {0.4*0.75, 0.4*0.75, 0, 0}
beaconed_electric_mining_drill_3_tint       = {0.48*0.75, 0.6*0.75, 0, 0}
beaconed_lab_tint                           = {0.4*0.5, 0.2*0.5, 0, 0}
beaconed_lab_2_tint                         = {0.4*0.45, 0.4*0.45, 0, 0}
beaconed_lab_3_tint                         = {0.48*0.45, 0.6*0.45, 0, 0}
beaconed_oil_refinery_1_tint                = {0.4, 0.2, 0, 0}
beaconed_oil_refinery_2_tint                = {0.4, 0.4, 0, 0}
beaconed_oil_refinery_3_tint                = {0.48,0.6, 0, 0}
beaconed_pumpjack_1_tint                    = {0.4*0.9, 0.2*0.9, 0, 0}
beaconed_pumpjack_2_tint                    = {0.4*0.8, 0.4*0.8, 0, 0}
beaconed_pumpjack_3_tint                    = {0.6*0.6, 0.75*0.7, 0, 0}
beaconed_rocket_silo_1_tint                 = {0.4,0.2,0,0}
beaconed_rocket_silo_2_tint                 = {0.4*0.8,0.4*0.8,0,0}
beaconed_rocket_silo_3_tint                 = {0.48*0.8, 0.6*0.8, 0, 0}
beaconed_rocket_1_tint                      = {0.4*0.7,0.2*0.7,0,0}
beaconed_rocket_2_tint                      = {0.4*0.6,0.4*0.6,0,0}
beaconed_rocket_3_tint                      = {0.48*0.5, 0.6*0.5, 0, 0}

global_tier_1_animation_speed_multiplier = 1.5--1.5
global_tier_2_animation_speed_multiplier = 2--2
global_tier_3_animation_speed_multiplier = 3--3
global_tier_4_animation_speed_multiplier = 4--4

global_tier_1_mining_drill_animation_speed_multiplier = 4--1.5
global_tier_2_mining_drill_animation_speed_multiplier = 6--2
global_tier_3_mining_drill_animation_speed_multiplier = 8--3
--[[
function beaconed_crafting_speed(params)
  local machine_crafting_speed     = params.machine_crafting_speed or 1
  local machine_module_slots       = params.machine_module_slots or 4
  local beacon_count               = params.beacon_count or 12
  local beacon_effect              = params.beacon_effect or 0.5
  local beacon_module_slots        = params.beacon_module_slots or 2
  local beacon_module_speed_bonus  = params.beacon_module_speed_bonus or 0.5
  local machine_module_speed_bonus = params.machine_module_speed_bonus or -0.15

  local beacon_speed_effect         = beacon_count * beacon_module_speed_bonus * beacon_effect * beacon_module_slots
  local machine_module_speed_effect = machine_module_slots * machine_module_speed_bonus
  local speed_multiplier            = 1 + machine_module_speed_effect + beacon_speed_effect
  local beaconed_crafting_speed     = machine_crafting_speed * speed_multiplier
  --machine_crafting_speed * (1 + (( (machine_module_slots * machine_module_speed_bonus) + (beacon_count*beacon_module_speed_bonus*beacon_effect*beacon_module_slots) )/100))))
  return beaconed_crafting_speed
end

function beaconed_emissions(params)
  local machine_emission                  = params.machine_emissions or 1
  local machine_module_slots              = params.machine_module_slots or 4
  local beacon_count                      = params.beacon_count or 12
  local beacon_effect                     = params.beacon_effect or 0.5
  local beacon_module_slots               = params.beacon_module_slots or 2
  local beacon_module_energy_usage_bonus  = params.beacon_module_energy_usage_bonus or 0
  local machine_module_energy_usage_bonus = params.machine_module_energy_usage_bonus or 0
  local machine_module_pollution_bonus    = params.machine_module_pollution_bonus or 0
  local emission_hack                     = params.emission_hack or 1 -- used to compensate for fullspeed productivity modules not having exactly half the effect of base productivity modules

  -- notes
  
  --local result = original_emissions * crafting_speed_multiplier * power_consumption_multiplier * pollution_multiplier
  -------

  local beacon_energy_usage_effect         = beacon_count * beacon_module_energy_usage_bonus * beacon_effect * beacon_module_slots
  local machine_module_energy_usage_effect = machine_module_slots * machine_module_energy_usage_bonus
  local energy_usage_multiplier            = 1 + machine_module_energy_usage_effect + beacon_energy_usage_effect
  local beaconed_emission                  = machine_emission * energy_usage_multiplier / emission_hack
  
  return beaconed_emission
end

function beaconed_energy_usage(params)
  local machine_energy_usage              = params.machine_energy_usage or "128kW"
  local machine_module_slots              = params.machine_module_slots or 4
  local beacon_count                      = params.beacon_count or 12
  local beacon_effect                     = params.beacon_effect or 0.5
  local beacon_module_slots               = params.beacon_module_slots or 2
  local beacon_module_energy_usage_bonus  = params.beacon_module_energy_usage_bonus or 0.5
  local machine_module_energy_usage_bonus = params.machine_module_energy_usage_bonus or -0.15
  
  local machine_energy_usage_nokw   = string.gsub(machine_energy_usage, "kW", "")
  local machine_energy_usage_number = tonumber(machine_energy_usage_nokw, 10)

  local beacon_energy_usage_effect         = beacon_count * beacon_module_energy_usage_bonus * beacon_effect * beacon_module_slots
  local machine_module_energy_usage_effect = machine_module_slots * machine_module_energy_usage_bonus
  local energy_usage_multiplier            = 1 + machine_module_energy_usage_effect + beacon_energy_usage_effect
  local beaconed_energy_usage              = machine_energy_usage_number * energy_usage_multiplier
  local beaconed_energy_usage_string       = tostring(beaconed_energy_usage) .. "kW"

  --error(serpent.block(beaconed_energy_usage_string))
  return beaconed_energy_usage_string
end

function beaconed_drain(params)
  local machine_drain                     = params.machine_drain or "0kW"
  local average_beacon_count              = params.average_beacon_count or 0
  
  local machine_drain_nokw   = string.gsub(machine_drain, "kW", "")
  local machine_drain_number = tonumber(machine_drain_nokw, 10)

  local beaconed_drain              = machine_drain_number + average_beacon_count * global_beacon_drain
  local beaconed_drain_string       = tostring(beaconed_drain) .. "kW"

  --error(serpent.block(beaconed_drain_string))
  return beaconed_drain_string
end
]]--

function beaconed_stats(params)
  -------------------------------------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------------------------------------
  
  local machine_drain                     = params.machine_drain or "0kW"
  local average_beacon_count              = params.average_beacon_count or 0
  
  local machine_drain_noKw   = string.gsub(machine_drain, "KW", "")
  local machine_drain_nokw   = string.gsub(machine_drain_noKw, "kW", "")
  local machine_drain_number = tonumber(machine_drain_nokw, 10)

  local beaconed_drain              = machine_drain_number + average_beacon_count * global_beacon_drain
  local beaconed_drain_string       = tostring(beaconed_drain) .. "kW"
  --error(serpent.block(beaconed_drain_string))
  --return beaconed_drain_string
  
  -------------------------------------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------------------------------------
  
  local machine_energy_usage              = params.machine_energy_usage or "128kW"
  local machine_module_slots              = params.machine_module_slots or 4
  local beacon_count                      = params.beacon_count or 12
  local beacon_effect                     = params.beacon_effect or 0.5
  local beacon_module_slots               = params.beacon_module_slots or 2
  local beacon_module_energy_usage_bonus  = params.beacon_module_energy_usage_bonus or 0.5
  local machine_module_energy_usage_bonus = params.machine_module_energy_usage_bonus or -0.15
  
  local machine_energy_usage_noKw   = string.gsub(machine_energy_usage, "KW", "")
  local machine_energy_usage_nokw   = string.gsub(machine_energy_usage_noKw, "kW", "")
  local machine_energy_usage_number = tonumber(machine_energy_usage_nokw, 10)

  local beacon_energy_usage_effect         = beacon_count * beacon_module_energy_usage_bonus * beacon_effect * beacon_module_slots
  local machine_module_energy_usage_effect = machine_module_slots * machine_module_energy_usage_bonus
  local energy_usage_multiplier            = 1 + machine_module_energy_usage_effect + beacon_energy_usage_effect
  local beaconed_energy_usage              = machine_energy_usage_number * energy_usage_multiplier
  local beaconed_energy_usage_string       = tostring(beaconed_energy_usage) .. "kW"

  --error(serpent.block(beaconed_energy_usage_string))
  --return beaconed_energy_usage_string

  -------------------------------------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------------------------------------

  local machine_crafting_speed     = params.machine_crafting_speed or 1
  local machine_module_slots       = params.machine_module_slots or 4
  local beacon_count               = params.beacon_count or 12
  local beacon_effect              = params.beacon_effect or 0.5
  local beacon_module_slots        = params.beacon_module_slots or 2
  local beacon_module_speed_bonus  = params.beacon_module_speed_bonus or 0
  local machine_module_speed_bonus = params.machine_module_speed_bonus or 0

  local beacon_speed_effect         = beacon_count * beacon_module_speed_bonus * beacon_effect * beacon_module_slots
  local machine_module_speed_effect = machine_module_slots * machine_module_speed_bonus
  local speed_multiplier            = 1 + machine_module_speed_effect + beacon_speed_effect
  local beaconed_crafting_speed     = machine_crafting_speed * speed_multiplier

  --return beaconed_crafting_speed

  -------------------------------------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------------------------------------

  local machine_emission                  = params.machine_emissions or 1
  local machine_module_slots              = params.machine_module_slots or 4
  local beacon_count                      = params.beacon_count or 12
  local beacon_effect                     = params.beacon_effect or 0.5
  local beacon_module_slots               = params.beacon_module_slots or 2
  local beacon_module_energy_usage_bonus  = params.beacon_module_energy_usage_bonus or 0
  local machine_module_energy_usage_bonus = params.machine_module_energy_usage_bonus or 0
  local emission_hack                     = params.emission_hack or 1 -- used to compensate for fullspeed productivity modules not having exactly half the effect of base productivity modules

  -- unused
  local beacon_energy_usage_effect         = beacon_count * beacon_module_energy_usage_bonus * beacon_effect * beacon_module_slots
  local machine_module_energy_usage_effect = machine_module_slots * machine_module_energy_usage_bonus
  local energy_usage_multiplier            = 1 + machine_module_energy_usage_effect + beacon_energy_usage_effect
  local beaconed_emissions_per_minute      = machine_emission * energy_usage_multiplier / emission_hack

  -------------------------------------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------------------------------------

  local original_animation_speed            = params.original_animation_speed or 1
  local tier_animation_speed_multiplier     = params.tier_animation_speed_multiplier or 1
  local custom_animation_speed_multiplier   = params.custom_animation_speed_multiplier or 1
  local beaconed_animation_speed_multiplier = tier_animation_speed_multiplier * custom_animation_speed_multiplier / speed_multiplier
  local beaconed_animation_speed            = original_animation_speed * beaconed_animation_speed_multiplier

  local stats = {}
  stats.beaconed_drain_string         = beaconed_drain_string
  stats.beaconed_crafting_speed       = beaconed_crafting_speed
  stats.beaconed_energy_usage_string  = beaconed_energy_usage_string
  stats.beaconed_emissions_per_minute = beaconed_emissions_per_minute
  stats.beaconed_animation_speed      = beaconed_animation_speed
  return stats

end