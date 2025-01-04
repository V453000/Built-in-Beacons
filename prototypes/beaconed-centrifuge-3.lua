local original_centrifuge = data.raw["assembling-machine"]["centrifuge"]
local beaconed_data = {
  machine_energy_usage              = original_centrifuge.energy_usage,
  machine_emissions                 = original_centrifuge.energy_source.emissions_per_minute.pollution,
  machine_crafting_speed            = original_centrifuge.crafting_speed,
  machine_module_slots              = original_centrifuge.module_slots,
  beacon_count                      = global_centrifuge_beacon_count,
  average_beacon_count              = global_centrifuge_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_3_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_3_energy_usage_bonus,
  machine_module_speed_bonus        = global_productivity_module_3_speed_bonus,
  machine_module_energy_usage_bonus = global_productivity_module_3_energy_usage_bonus,
  machine_module_productivity_bonus = global_productivity_module_3_productivity_bonus,
  machine_module_pollution_bonus    = global_productivity_module_3_pollution_bonus,
  original_animation_speed          = 1,
  tier_animation_speed_multiplier   = global_tier_3_animation_speed_multiplier,
  custom_animation_speed_multiplier = 1,
  emission_hack                     = 1
}
local beaconed_centrifuge_3_animation_speed = beaconed_stats(beaconed_data).beaconed_animation_speed

beaconed_centrifuge_3 = util.table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
beaconed_centrifuge_3.name = "beaconed-centrifuge-3"
beaconed_centrifuge_3.icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge-3.png"
beaconed_centrifuge_3.minable.result = "beaconed-centrifuge-3"
beaconed_centrifuge_3.crafting_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed
beaconed_centrifuge_3.energy_source.emissions_per_minute.pollution = beaconed_stats(beaconed_data).beaconed_emissions_per_minute
beaconed_centrifuge_3.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string
beaconed_centrifuge_3.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string
beaconed_centrifuge_3.allowed_effects = {"productivity", "pollution"}
beaconed_centrifuge_3.fast_replaceable_group = "centrifuge"

if settings.startup["productivity-mode"].value == 'Modded Modules' then
  beaconed_centrifuge_3.module_slots = data.raw["assembling-machine"]["centrifuge"].module_slots * 2
  if settings.startup["show-module-slot-row-length"].value > 0 then
    beaconed_centrifuge_3.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
  end
  if settings.startup["show-module-slot-rows"].value > 0 then
    beaconed_centrifuge_3.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
  end
else
  beaconed_centrifuge_3.module_slots = 0
  beaconed_centrifuge_3.base_productivity = beaconed_stats(beaconed_data).beaconed_base_productivity
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_centrifuge_3.graphics_set.idle_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/beaconed-centrifuge-A-overlay.png",
      priority = "high",
      line_length = 8,
      width = 50,
      height = 78,
      frame_count = 64,
      shift = util.by_pixel(-24, -13),
      tint = beaconed_centrifuge_3_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/hr-beaconed-centrifuge-A-overlay.png",
        priority = "high",
        scale = 0.5,
        line_length = 8,
        width = 98,
        height = 155,
        frame_count = 64,
        shift = util.by_pixel(-24, -12.75),
        tint = beaconed_centrifuge_3_tint
      }
    }
  )
  table.insert(beaconed_centrifuge_3.graphics_set.idle_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/beaconed-centrifuge-B-overlay.png",
      priority = "high",
      line_length = 8,
      width = 47,
      height = 81,
      frame_count = 64,
      shift = util.by_pixel(21.5, -11.5),
      tint = beaconed_centrifuge_3_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/hr-beaconed-centrifuge-B-overlay.png",
        priority = "high",
        scale = 0.5,
        line_length = 8,
        width = 93,
        height = 162,
        frame_count = 64,
        shift = util.by_pixel(21.75, -11.5),
        tint = beaconed_centrifuge_3_tint
      }
    }
  )
  table.insert(beaconed_centrifuge_3.graphics_set.idle_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/beaconed-centrifuge-C-overlay.png",
      priority = "high",
      line_length = 8,
      width = 56,
      height = 84,
      frame_count = 64,
      shift = util.by_pixel(-8, -38),
      tint = beaconed_centrifuge_3_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/hr-beaconed-centrifuge-C-overlay.png",
        priority = "high",
        scale = 0.5,
        line_length = 8,
        width = 110,
        height = 168,
        frame_count = 64,
        shift = util.by_pixel(-8, -38),
        tint = beaconed_centrifuge_3_tint
      }
    }
  )
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_centrifuge_3.graphics_set.working_visualisations[2].animation.layers) do
    layer.animation_speed = beaconed_centrifuge_3_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_3_animation_speed
    end
  end
  for i,layer in pairs(beaconed_centrifuge_3.graphics_set.idle_animation.layers) do
    layer.animation_speed = beaconed_centrifuge_3_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_3_animation_speed
    end
  end
end

data:extend({
  beaconed_centrifuge_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-centrifuge-3",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[centrifuge]",
    place_result = "beaconed-centrifuge-3",
    stack_size = 50,
    localised_description = {'item-description.beaconed-centrifuge-3', tostring(global_centrifuge_beacon_count)}
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-centrifuge-3",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons-3",
    order = "g",
    ingredients =
    {
      {type = "item", name = "beaconed-centrifuge-2", amount = 1},
      {type = "item", name = "speed-module-3", amount = global_centrifuge_average_beacon_count * global_beacon_module_slots}
    },
    results = {
      {type = "item", name = "beaconed-centrifuge-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = global_centrifuge_average_beacon_count * global_beacon_module_slots, show_details_in_recipe_tooltip = false}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-centrifuge-3",
    localised_description = {'item-description.beaconed-centrifuge-3', tostring(global_centrifuge_beacon_count)}
  }
})

if global_logging == true then
  log(serpent.block( beaconed_data ))
  log(serpent.block( beaconed_stats(beaconed_data) ))
end
