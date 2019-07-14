maxspeed_beaconed_assembling_machine_3 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
maxspeed_beaconed_assembling_machine_3.name = "maxspeed-beaconed-assembling-machine-3"
maxspeed_beaconed_assembling_machine_3.icon = "__Absorbed-Beacons__/graphics/icons/maxspeed-beaconed-assembling-machine-3.png"
maxspeed_beaconed_assembling_machine_3.minable.result = "maxspeed-beaconed-assembling-machine-3"
maxspeed_beaconed_assembling_machine_3.crafting_speed = 11.25
maxspeed_beaconed_assembling_machine_3.energy_source.emissions_per_second_per_watt = 2 / 375000
maxspeed_beaconed_assembling_machine_3.energy_source.drain = "3367kW"
maxspeed_beaconed_assembling_machine_3.energy_usage = "4575kW"
maxspeed_beaconed_assembling_machine_3.allowed_effects = {"pollution"}

maxspeed_beaconed_assembling_machine_3.module_specification.module_slots = data.raw["assembling-machine"]["assembling-machine-3"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  maxspeed_beaconed_assembling_machine_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  maxspeed_beaconed_assembling_machine_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == true then
maxspeed_beaconed_assembling_machine_3.animation =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
      priority = "high",
      width = 108,
      height = 119,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(0, -0.5),
      animation_speed = beaconed_assembling_machine_3_animation_speed,
      hr_version =
      {
        filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3.png",
        priority = "high",
        width = 214,
        height = 237,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(0, -0.75),
        animation_speed = beaconed_assembling_machine_3_animation_speed,
        scale = 0.5
      }
    },
    {
      filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-3/beaconed-assembling-machine-3-overlay.png",
      width = 107,
      height = 109,
      frame_count = 1,
      repeat_count = 32,
      shift = util.by_pixel(0, 4),
      animation_speed = beaconed_assembling_machine_3_animation_speed,
      hr_version = {
        filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-3/hr-beaconed-assembling-machine-3-overlay.png",
        priority = "high",
        width = 214,
        height = 218,
        frame_count = 1,
        repeat_count = 32,
        shift = util.by_pixel(0, 4),
        animation_speed = beaconed_assembling_machine_3_animation_speed,
        scale = 0.5
      }
    },
    {
      filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-3/assembling-machine-3-mask.png",
      width = 78,
      height = 96,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(-1, -11),
      tint = {0.1*0.5, 0.35*0.5 , 0.5*0.5, 0},
      blend_mode = "additive",
      animation_speed = beaconed_assembling_machine_3_animation_speed,
      hr_version = {
        filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-3/hr-assembling-machine-3-mask.png",
        priority = "high",
        width = 156,
        height = 192,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(-0.5, -11),
        tint = {0.1*0.5, 0.35*0.5 , 0.5*0.5, 0},
        blend_mode = "additive",
        animation_speed = beaconed_assembling_machine_3_animation_speed,
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
      priority = "high",
      width = 130,
      height = 82,
      frame_count = 32,
      line_length = 8,
      draw_as_shadow = true,
      shift = util.by_pixel(28, 4),
      animation_speed = beaconed_assembling_machine_3_animation_speed,
      hr_version =
      {
        filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
        priority = "high",
        width = 260,
        height = 162,
        frame_count = 32,
        line_length = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(28, 4),
        animation_speed = beaconed_assembling_machine_3_animation_speed,
        scale = 0.5
      }
    }
  }
}
end

data:extend({
  maxspeed_beaconed_assembling_machine_3
})
data:extend({
  {
    type = "item",
    name = "maxspeed-beaconed-assembling-machine-3",
    icon = "__Absorbed-Beacons__/graphics/icons/maxspeed-beaconed-assembling-machine-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-4",
    order = "c[assembling-machine-3]",
    place_result = "maxspeed-beaconed-assembling-machine-3",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "maxspeed-beaconed-assembling-machine-3",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/maxspeed-beaconed-assembling-machine-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-4",
    order = "c",
    ingredients =
    {
      {"beaconed-assembling-machine-3", 1},
      {"speed-module-3", 4}
    },
    results = {
      {type = "item", name = "maxspeed-beaconed-assembling-machine-3", amount = 1}
    }
  }
})