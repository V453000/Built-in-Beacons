local original_pumpjack = data.raw["mining-drill"]["pumpjack"]
local beaconed_data = {
  machine_energy_usage              = original_pumpjack.energy_usage,
  machine_emissions                 = original_pumpjack.energy_source.emissions_per_minute,
  machine_crafting_speed            = original_pumpjack.mining_speed,
  machine_module_slots              = original_pumpjack.module_specification.module_slots,
  beacon_count                      = global_pumpjack_beacon_count,
  average_beacon_count              = global_pumpjack_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_2_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_2_energy_usage_bonus,
  machine_module_speed_bonus        = global_speed_module_2_speed_bonus,
  machine_module_energy_usage_bonus = global_speed_module_2_energy_usage_bonus,
  original_animation_speed          = 0.5,
  tier_animation_speed_multiplier   = global_tier_2_mining_drill_animation_speed_multiplier,
  custom_animation_speed_multiplier = 1,
  emission_hack                     = 1
}
local beaconed_pumpjack_2_animation_speed = beaconed_stats(beaconed_data).beaconed_animation_speed

beaconed_pumpjack_2 = util.table.deepcopy(data.raw["mining-drill"]["pumpjack"])
beaconed_pumpjack_2.name = "beaconed-pumpjack-2"
beaconed_pumpjack_2.icon = "__Built-in-Beacons__/graphics/icons/beaconed-pumpjack-2.png"
beaconed_pumpjack_2.minable.result = "beaconed-pumpjack-2"
beaconed_pumpjack_2.next_upgrade = "beaconed-pumpjack-3"
beaconed_pumpjack_2.mining_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed
beaconed_pumpjack_2.energy_source.emissions_per_minute = beaconed_stats(beaconed_data).beaconed_emissions_per_minute
beaconed_pumpjack_2.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string
beaconed_pumpjack_2.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string
beaconed_pumpjack_2.allowed_effects = {"productivity", "pollution"}
beaconed_pumpjack_2.fast_replaceable_group = "pumpjack"

beaconed_pumpjack_2.module_specification.module_slots = 0

-- if settings.startup["show-module-slot-row-length"].value > 0 then
--   beaconed_pumpjack_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
-- end
-- if settings.startup["show-module-slot-rows"].value > 0 then
--   beaconed_pumpjack_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
-- end

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_pumpjack_2.animations.north.layers,
  {
    priority = "high",
    filename = "__Built-in-Beacons__/graphics/entity/beaconed-pumpjack/pumpjack-horsehead-mask.png",
    line_length = 8,
    width = 104,
    height = 102,
    frame_count = 40,
    shift = util.by_pixel(-4, -24),
    --blend_mode = "additive",
    tint = beaconed_pumpjack_2_tint,
    animation_speed = beaconed_pumpjack_2_animation_speed,
    hr_version =
    {
      priority = "high",
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-pumpjack/hr-pumpjack-horsehead-mask.png",
      animation_speed = beaconed_pumpjack_2_animation_speed,
      scale = 0.5,
      line_length = 8,
      width = 206,
      height = 202,
      frame_count = 40,
      shift = util.by_pixel(-4, -24),
      tint = beaconed_pumpjack_2_tint,
    }
  })
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_pumpjack_2.animations.north.layers) do
    layer.animation_speed = beaconed_pumpjack_2_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_pumpjack_2_animation_speed
    end
  end
end


data:extend({
  beaconed_pumpjack_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-pumpjack-2",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-pumpjack-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "b[fluids]-b[pumpjack]",
    place_result = "beaconed-pumpjack-2",
    stack_size = 20,
    localised_description = {'item-description.beaconed-pumpjack-2', global_pumpjack_beacon_count}
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-pumpjack-2",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-pumpjack-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons-2",
    order = "k",
    ingredients =
    {
      {"beaconed-pumpjack", 1},
      {"speed-module-2", global_pumpjack_average_beacon_count * global_beacon_module_slots}
    },
    results = {
      {type = "item", name = "beaconed-pumpjack-2", amount = 1},
      {type = "item", name = "speed-module", amount = global_pumpjack_average_beacon_count * global_beacon_module_slots, show_details_in_recipe_tooltip = false}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-pumpjack-2",
    localised_description = {'item-description.beaconed-pumpjack-2', global_pumpjack_beacon_count}
  }
})

if global_logging == true then
  log(serpent.block( beaconed_data ))
  log(serpent.block( beaconed_stats(beaconed_data) ))
end