local original_centrifuge = data.raw["assembling-machine"]["centrifuge"]
local beaconed_data = {
  machine_energy_usage              = original_centrifuge.energy_usage,
  machine_emissions                 = original_centrifuge.energy_source.emissions_per_minute,
  machine_crafting_speed            = original_centrifuge.crafting_speed,
  machine_module_slots              = original_centrifuge.module_specification.module_slots,
  beacon_count                      = global_centrifuge_beacon_count,
  average_beacon_count              = global_centrifuge_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_2_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_2_energy_usage_bonus,
  machine_module_speed_bonus        = global_productivity_module_2_speed_bonus,
  machine_module_energy_usage_bonus = global_productivity_module_2_energy_usage_bonus,
  original_animation_speed          = 1,
  tier_animation_speed_multiplier   = global_tier_2_animation_speed_multiplier,
  custom_animation_speed_multiplier = 1,
  emission_hack                     = 1.01773
}
local beaconed_centrifuge_2_animation_speed = beaconed_stats(beaconed_data).beaconed_animation_speed

beaconed_centrifuge_2 = util.table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
beaconed_centrifuge_2.name = "beaconed-centrifuge-2"
beaconed_centrifuge_2.icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge-2.png"
beaconed_centrifuge_2.minable.result = "beaconed-centrifuge-2"
beaconed_centrifuge_2.next_upgrade = "beaconed-centrifuge-3"
beaconed_centrifuge_2.crafting_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed
beaconed_centrifuge_2.energy_source.emissions_per_minute = beaconed_stats(beaconed_data).beaconed_emissions_per_minute
beaconed_centrifuge_2.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string
beaconed_centrifuge_2.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string
beaconed_centrifuge_2.allowed_effects = {"productivity", "pollution"}
beaconed_centrifuge_2.fast_replaceable_group = "centrifuge"

beaconed_centrifuge_2.module_specification.module_slots = data.raw["assembling-machine"]["centrifuge"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_centrifuge_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_centrifuge_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_centrifuge_2.idle_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/beaconed-centrifuge-A-overlay.png",
      priority = "high",
      line_length = 8,
      width = 50,
      height = 78,
      frame_count = 64,
      shift = util.by_pixel(-24, -13),
      tint = beaconed_centrifuge_2_tint,
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
        tint = beaconed_centrifuge_2_tint
      }
    }
  )
  table.insert(beaconed_centrifuge_2.idle_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/beaconed-centrifuge-B-overlay.png",
      priority = "high",
      line_length = 8,
      width = 47,
      height = 81,
      frame_count = 64,
      shift = util.by_pixel(21.5, -11.5),
      tint = beaconed_centrifuge_2_tint,
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
        tint = beaconed_centrifuge_2_tint
      }
    }
  )
  table.insert(beaconed_centrifuge_2.idle_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-centrifuge/beaconed-centrifuge-C-overlay.png",
      priority = "high",
      line_length = 8,
      width = 56,
      height = 84,
      frame_count = 64,
      shift = util.by_pixel(-8, -38),
      tint = beaconed_centrifuge_2_tint,
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
        tint = beaconed_centrifuge_2_tint
      }
    }
  )
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_centrifuge_2.animation.layers) do
    layer.animation_speed = beaconed_centrifuge_2_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_2_animation_speed
    end
  end
  for i,layer in pairs(beaconed_centrifuge_2.idle_animation.layers) do
    layer.animation_speed = beaconed_centrifuge_2_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_2_animation_speed
    end
  end
end

data:extend({
  beaconed_centrifuge_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-centrifuge-2",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[centrifuge]",
    place_result = "beaconed-centrifuge-2",
    stack_size = 50,
    localised_description = {'item-description.beaconed-centrifuge-2', global_centrifuge_beacon_count}
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-centrifuge-2",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons-2",
    order = "g",
    ingredients =
    {
      {"beaconed-centrifuge", 1},
      {"speed-module-2", global_centrifuge_average_beacon_count * global_beacon_module_slots}
    },
    results = {
      {type = "item", name = "beaconed-centrifuge-2", amount = 1},
      {type = "item", name = "speed-module", amount = global_centrifuge_average_beacon_count * global_beacon_module_slots, show_details_in_recipe_tooltip = false}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-centrifuge-2",
    localised_description = {'item-description.beaconed-centrifuge-2', global_centrifuge_beacon_count}
  }
})

if global_logging == true then
  log(serpent.block( beaconed_data ))
  log(serpent.block( beaconed_stats(beaconed_data) ))
end