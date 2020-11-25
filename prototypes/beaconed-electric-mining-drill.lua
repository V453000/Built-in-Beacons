local original_electric_mining_drill = data.raw["mining-drill"]["electric-mining-drill"]
local beaconed_data = {
  machine_energy_usage              = original_electric_mining_drill.energy_usage,
  machine_emissions                 = original_electric_mining_drill.energy_source.emissions_per_minute,
  machine_crafting_speed            = original_electric_mining_drill.mining_speed,
  machine_module_slots              = original_electric_mining_drill.module_specification.module_slots,
  beacon_count                      = global_electric_mining_drill_beacon_count,
  average_beacon_count              = global_electric_mining_drill_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_1_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_1_energy_usage_bonus,
  machine_module_speed_bonus        = global_speed_module_1_speed_bonus,
  machine_module_energy_usage_bonus = global_speed_module_1_energy_usage_bonus,
  original_animation_speed          = 0.5,
  tier_animation_speed_multiplier   = global_tier_1_mining_drill_animation_speed_multiplier,
  custom_animation_speed_multiplier = 1,
  emission_hack                     = 1
}
local beaconed_electric_drill_1_animation_speed = beaconed_stats(beaconed_data).beaconed_animation_speed

beaconed_electric_mining_drill = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
beaconed_electric_mining_drill.name = "beaconed-electric-mining-drill"
beaconed_electric_mining_drill.icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill.png"
beaconed_electric_mining_drill.minable.result = "beaconed-electric-mining-drill"
beaconed_electric_mining_drill.next_upgrade = "beaconed-electric-mining-drill-2"
beaconed_electric_mining_drill.mining_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed
beaconed_electric_mining_drill.energy_source.emissions_per_minute = beaconed_stats(beaconed_data).beaconed_emissions_per_minute
beaconed_electric_mining_drill.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string
beaconed_electric_mining_drill.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string
beaconed_electric_mining_drill.allowed_effects = {"productivity", "pollution"}

beaconed_electric_mining_drill.module_specification.module_slots = 0

-- if settings.startup["show-module-slot-row-length"].value > 0 then
--   beaconed_electric_mining_drill.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
-- end
-- if settings.startup["show-module-slot-rows"].value > 0 then
--   beaconed_electric_mining_drill.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
-- end

local vertical_overlay_graphics =
{
  priority = "high",
  filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/electric-mining-drill-overlay.png",
  line_length = 6,
  width = 78,
  height = 82,
  frame_count = 30,
  animation_speed = beaconed_electric_mining_drill.graphics_set.working_visualisations[3].north_animation.layers[1].animation_speed,
  frame_sequence = beaconed_electric_mining_drill.graphics_set.working_visualisations[3].north_animation.layers[1].frame_sequence,
  tint = beaconed_electric_mining_drill_1_tint,
  shift = util.by_pixel(0, -8),
  hr_version =
  {
    priority = "high",
    filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-electric-mining-drill-overlay.png",
    line_length = 6,
    width = 154,
    height = 164,
    frame_count = 30,
    animation_speed = beaconed_electric_mining_drill.graphics_set.working_visualisations[3].north_animation.layers[1].hr_version.animation_speed,
    frame_sequence = beaconed_electric_mining_drill.graphics_set.working_visualisations[3].north_animation.layers[1].hr_version.frame_sequence,
    tint = beaconed_electric_mining_drill_1_tint,
    shift = util.by_pixel(0, -8),
    scale = 0.5
  }
}
local horizontal_overlay_graphics =
{
  priority = "high",
  filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/electric-mining-drill-horizontal-overlay.png",
  line_length = 6,
  width = 36,
  height = 86,
  frame_count = 30,
  animation_speed = beaconed_electric_mining_drill.graphics_set.working_visualisations[3].east_animation.layers[1].animation_speed,
  frame_sequence = beaconed_electric_mining_drill.graphics_set.working_visualisations[3].east_animation.layers[1].frame_sequence,
  tint = beaconed_electric_mining_drill_1_tint,
  shift = util.by_pixel(2, -9),
  hr_version =
  {
    priority = "high",
    filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-electric-mining-drill-horizontal-overlay.png",
    line_length = 6,
    width = 72,
    height = 170,
    frame_count = 30,
    animation_speed = beaconed_electric_mining_drill.graphics_set.working_visualisations[3].east_animation.layers[1].hr_version.animation_speed,
    frame_sequence = beaconed_electric_mining_drill.graphics_set.working_visualisations[3].east_animation.layers[1].hr_version.frame_sequence,
    tint = beaconed_electric_mining_drill_1_tint,
    shift = util.by_pixel(2, -9),
    scale = 0.5
  }
}
local horizontal_front_overlay_graphics =
{
  priority = "high",
  filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/electric-mining-drill-horizontal-front-overlay.png",
  line_length = 6,
  width = 30,
  height = 74,
  frame_count = 30,
  animation_speed = beaconed_electric_mining_drill.graphics_set.working_visualisations[6].east_animation.animation_speed,
  frame_sequence = beaconed_electric_mining_drill.graphics_set.working_visualisations[6].east_animation.frame_sequence,
  tint = beaconed_electric_mining_drill_1_tint,
  shift = util.by_pixel(-4, 2),
  hr_version =
  {
    priority = "high",
    filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-electric-mining-drill-horizontal-front-overlay.png",
    line_length = 6,
    width = 58,
    height = 146,
    frame_count = 30,
    animation_speed = beaconed_electric_mining_drill.graphics_set.working_visualisations[6].east_animation.hr_version.animation_speed,
    frame_sequence = beaconed_electric_mining_drill.graphics_set.working_visualisations[6].east_animation.hr_version.frame_sequence,
    tint = beaconed_electric_mining_drill_1_tint,
    shift = util.by_pixel(-4.5, 2),
    scale = 0.5
  }
}
local function create_layers(original, modded)
  local original_layers = original

  local layers =
  {
    layers = {
      original_layers,
      modded
    }
  }
  return layers
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_electric_mining_drill.graphics_set.working_visualisations[3].north_animation.layers, vertical_overlay_graphics )
  table.insert(beaconed_electric_mining_drill.graphics_set.working_visualisations[3].south_animation.layers, vertical_overlay_graphics )
  table.insert(beaconed_electric_mining_drill.graphics_set.working_visualisations[3].east_animation.layers, horizontal_overlay_graphics )
  table.insert(beaconed_electric_mining_drill.graphics_set.working_visualisations[3].west_animation.layers, horizontal_overlay_graphics )
  
  beaconed_electric_mining_drill.graphics_set.working_visualisations[6].east_animation = create_layers(beaconed_electric_mining_drill.graphics_set.working_visualisations[6].east_animation, horizontal_front_overlay_graphics)
  beaconed_electric_mining_drill.graphics_set.working_visualisations[6].west_animation = create_layers(beaconed_electric_mining_drill.graphics_set.working_visualisations[6].west_animation, horizontal_front_overlay_graphics)
end

data:extend({
  beaconed_electric_mining_drill
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-mining-drill",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "a[items]-b[electric-mining-drill]",
    place_result = "beaconed-electric-mining-drill",
    stack_size = 50,
    localised_description = {'item-description.beaconed-electric-mining-drill', global_electric_mining_drill_beacon_count}
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-mining-drill",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons",
    order = "j",
    ingredients =
    {
      {"electric-mining-drill", 1},
      {"beacon", global_electric_mining_drill_average_beacon_count},
      {"speed-module", global_electric_mining_drill_average_beacon_count * global_beacon_module_slots}
    },
    results = {
      {type = "item", name = "beaconed-electric-mining-drill", amount = 1}
    },
    allow_as_intermediate = false,
    localised_description = {'item-description.beaconed-electric-mining-drill', global_electric_mining_drill_beacon_count}
  }
})

if global_logging == true then
  log(serpent.block( beaconed_data ))
  log(serpent.block( beaconed_stats(beaconed_data) ))
end