local original_assembling_machine_3 = data.raw["assembling-machine"]["assembling-machine-3"]
local beaconed_data = {
  machine_energy_usage              = original_assembling_machine_3.energy_usage,
  machine_emissions                 = original_assembling_machine_3.energy_source.emissions_per_minute,
  machine_crafting_speed            = original_assembling_machine_3.crafting_speed,
  machine_module_slots              = original_assembling_machine_3.module_specification.module_slots,
  beacon_count                      = global_assembling_machine_beacon_count,
  average_beacon_count              = global_assembling_machine_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_1_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_1_energy_usage_bonus,
  machine_module_speed_bonus        = global_productivity_module_1_speed_bonus,
  machine_module_energy_usage_bonus = global_productivity_module_1_energy_usage_bonus,
  original_animation_speed          = 1,
  tier_animation_speed_multiplier   = global_tier_1_animation_speed_multiplier,
  custom_animation_speed_multiplier = 1,
  emission_hack                     = 1.03343
}
local beaconed_assembling_machine_1_animation_speed = beaconed_stats(beaconed_data).beaconed_animation_speed

beaconed_assembling_machine = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
beaconed_assembling_machine.name = "beaconed-assembling-machine"
beaconed_assembling_machine.icon = "__Built-in-Beacons__/graphics/icons/beaconed-assembling-machine.png"
beaconed_assembling_machine.minable.result = "beaconed-assembling-machine"
beaconed_assembling_machine.next_upgrade = "beaconed-assembling-machine-2"
beaconed_assembling_machine.crafting_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed--3.5
beaconed_assembling_machine.energy_source.emissions_per_minute = beaconed_stats(beaconed_data).beaconed_emissions_per_minute
beaconed_assembling_machine.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string--"3367kW"
beaconed_assembling_machine.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string--"3225kW"
beaconed_assembling_machine.allowed_effects = {"productivity", "pollution"}

beaconed_assembling_machine.module_specification.module_slots = original_assembling_machine_3.module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_assembling_machine.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_assembling_machine.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_assembling_machine.animation.layers, 
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-1/beaconed-assembling-machine-1-overlay.png",
      width = 107,
      height = 109,
      frame_count = 1,
      repeat_count = 32,
      shift = util.by_pixel(0, 4),
      animation_speed = beaconed_assembling_machine_1_animation_speed,
      hr_version = {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-1/hr-beaconed-assembling-machine-1-overlay.png",
        priority = "high",
        width = 214,
        height = 218,
        frame_count = 1,
        repeat_count = 32,
        shift = util.by_pixel(0, 4),
        animation_speed = beaconed_assembling_machine_1_animation_speed,
        scale = 0.5
      }
    })
  table.insert(beaconed_assembling_machine.animation.layers, 
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-3/assembling-machine-3-mask.png",
      width = 78,
      height = 96,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(-1, -11),
      tint = beaconed_assembling_machine_1_tint,
      blend_mode = "additive",
      animation_speed = beaconed_assembling_machine_1_animation_speed,
      hr_version = {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-3/hr-assembling-machine-3-mask.png",
        priority = "high",
        width = 156,
        height = 192,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(-0.5, -11),
        tint = beaconed_assembling_machine_1_tint,
        blend_mode = "additive",
        animation_speed = beaconed_assembling_machine_1_animation_speed,
        scale = 0.5
      }
    })
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_assembling_machine.animation.layers) do
    layer.animation_speed = beaconed_assembling_machine_1_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_assembling_machine_1_animation_speed
    end
  end
end

data:extend({
  beaconed_assembling_machine
})
data:extend({
  {
    type = "item",
    name = "beaconed-assembling-machine",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-assembling-machine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "c[assembling-machine-3]",
    place_result = "beaconed-assembling-machine",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-assembling-machine",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-assembling-machine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons",
    order = "c",
    ingredients =
    {
      {"assembling-machine-3", 1},
      {"beacon", global_assembling_machine_average_beacon_count},
      {"speed-module", global_assembling_machine_average_beacon_count * global_beacon_module_slots}
    },
    results = {
      {type = "item", name = "beaconed-assembling-machine", amount = 1},
    },
    allow_as_intermediate = false
  }
})

if global_logging == true then
  log(serpent.block( beaconed_data ))
  log(serpent.block( beaconed_stats(beaconed_data) ))
end