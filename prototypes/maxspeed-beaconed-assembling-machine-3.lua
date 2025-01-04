local original_assembling_machine_3 = data.raw["assembling-machine"]["assembling-machine-3"]
local beaconed_data = {
  machine_energy_usage              = original_assembling_machine_3.energy_usage,
  machine_emissions                 = original_assembling_machine_3.energy_source.emissions_per_minute.pollution,
  machine_crafting_speed            = original_assembling_machine_3.crafting_speed,
  machine_module_slots              = original_assembling_machine_3.module_slots,
  beacon_count                      = global_assembling_machine_beacon_count,
  average_beacon_count              = global_assembling_machine_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_3_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_3_energy_usage_bonus,
  machine_module_speed_bonus        = global_speed_module_3_speed_bonus,
  machine_module_energy_usage_bonus = global_speed_module_3_energy_usage_bonus,
  original_animation_speed          = 1,
  tier_animation_speed_multiplier   = global_tier_4_animation_speed_multiplier,
  custom_animation_speed_multiplier = 1,
  emission_hack                     = 1
}

maxspeed_beaconed_assembling_machine_3 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
maxspeed_beaconed_assembling_machine_3.name = "maxspeed-beaconed-assembling-machine-3"
maxspeed_beaconed_assembling_machine_3.icon = "__Built-in-Beacons__/graphics/icons/maxspeed-beaconed-assembling-machine-3.png"
maxspeed_beaconed_assembling_machine_3.minable.result = "maxspeed-beaconed-assembling-machine-3"
maxspeed_beaconed_assembling_machine_3.crafting_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed--11.25
maxspeed_beaconed_assembling_machine_3.energy_source.emissions_per_minute.pollution = beaconed_stats(beaconed_data).beaconed_emissions_per_minute--2 / 375000
maxspeed_beaconed_assembling_machine_3.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string--"3367kW"
maxspeed_beaconed_assembling_machine_3.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string--"4575kW"
maxspeed_beaconed_assembling_machine_3.allowed_effects = {"pollution"}

maxspeed_beaconed_assembling_machine_3.module_slots = 0

local maxspeed_beaconed_assembling_machine_3_animation_speed = beaconed_stats(beaconed_data).beaconed_animation_speed

if settings.startup["modded-entity-graphics"].value == "ON" then
  maxspeed_beaconed_assembling_machine_3.fluid_boxes[1].secondary_draw_order = 2
  maxspeed_beaconed_assembling_machine_3.fluid_boxes[2].secondary_draw_order = 2
  table.insert(maxspeed_beaconed_assembling_machine_3.graphics_set.animation.layers, 
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-3/beaconed-assembling-machine-3-overlay.png",
      width = 107,
      height = 109,
      frame_count = 1,
      repeat_count = 32,
      shift = util.by_pixel(0, 4),
      animation_speed = beaconed_assembling_machine_3_animation_speed,
      hr_version = {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-3/hr-beaconed-assembling-machine-3-overlay.png",
        priority = "high",
        width = 214,
        height = 218,
        frame_count = 1,
        repeat_count = 32,
        shift = util.by_pixel(0, 4),
        animation_speed = beaconed_assembling_machine_3_animation_speed,
        scale = 0.5
      }
    })
  table.insert(maxspeed_beaconed_assembling_machine_3.graphics_set.animation.layers, 
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-3/assembling-machine-3-mask.png",
      width = 78,
      height = 96,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(-1, -11),
      tint = maxspeed_beaconed_assembling_machine_3_tint,
      blend_mode = "additive",
      animation_speed = beaconed_assembling_machine_3_animation_speed,
      hr_version = {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-3/hr-assembling-machine-3-mask.png",
        priority = "high",
        width = 156,
        height = 192,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(-0.5, -11),
        tint = maxspeed_beaconed_assembling_machine_3_tint,
        blend_mode = "additive",
        animation_speed = beaconed_assembling_machine_3_animation_speed,
        scale = 0.5
      }
    })
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(maxspeed_beaconed_assembling_machine_3.graphics_set.animation.layers) do
    layer.animation_speed = beaconed_assembling_machine_3_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_assembling_machine_3_animation_speed
    end
  end
end

data:extend({
  maxspeed_beaconed_assembling_machine_3
})
data:extend({
  {
    type = "item",
    name = "maxspeed-beaconed-assembling-machine-3",
    icon = "__Built-in-Beacons__/graphics/icons/maxspeed-beaconed-assembling-machine-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "c[assembling-machine-3]",
    place_result = "maxspeed-beaconed-assembling-machine-3",
    stack_size = 50,
    localised_description = {'item-description.maxspeed-beaconed-assembling-machine-3', tostring(global_assembling_machine_beacon_count)}
  },
})
data:extend({
  {
    type = "recipe",
    name = "maxspeed-beaconed-assembling-machine-3",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/maxspeed-beaconed-assembling-machine-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons-4",
    order = "c",
    ingredients =
    {
      {type = "item", name = "assembling-machine-3", amount = 1},
      {type = "item", name = "beacon", amount = global_assembling_machine_average_beacon_count},
      {type = "item", name = "speed-module-3", amount = global_assembling_machine_average_beacon_count * global_beacon_module_slots + original_assembling_machine_3.module_slots}
    },
    results = {
      {type = "item", name = "maxspeed-beaconed-assembling-machine-3", amount = 1}
    },
    localised_description = {'item-description.maxspeed-beaconed-assembling-machine-3', tostring(global_assembling_machine_beacon_count)}
  }
})

if global_logging == true then
  log(serpent.block( beaconed_data ))
  log(serpent.block( beaconed_stats(beaconed_data) ))
end