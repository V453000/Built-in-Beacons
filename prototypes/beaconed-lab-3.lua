beaconed_lab_3 = util.table.deepcopy(data.raw["lab"]["lab"])
beaconed_lab_3.name = "beaconed-lab-3"
beaconed_lab_3.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-lab-3.png"
beaconed_lab_3.minable.result = "beaconed-lab-3"
beaconed_lab_3.researching_speed = 6.7
beaconed_lab_3.energy_source.drain = "3360kW"
beaconed_lab_3.energy_usage = "660kW"
beaconed_lab_3.allowed_effects = {"productivity", "pollution"}
beaconed_lab_3.fast_replaceable_group = "lab"

beaconed_lab_3.module_specification.module_slots = data.raw["lab"]["lab"].module_specification.module_slots * 2

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_lab_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_lab_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == true then
  beaconed_lab_3.on_animation = 
  {
    layers =
    {
      {
        filename = "__Absorbed-Beacons__/graphics/entity/beaconed-lab/lab-space.png",
        width = 98,
        height = 87,
        frame_count = 33,
        line_length = 11,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 1.5),
        hr_version =
        {
          filename = "__Absorbed-Beacons__/graphics/entity/beaconed-lab/hr-lab-space.png",
          width = 194,
          height = 174,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/lab/lab-integration.png",
        width = 122,
        height = 81,
        frame_count = 1,
        line_length = 1,
        repeat_count = 33,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 15.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
          width = 242,
          height = 162,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/lab/lab-shadow.png",
        width = 122,
        height = 68,
        frame_count = 1,
        line_length = 1,
        repeat_count = 33,
        animation_speed = 1 / 3,
        shift = util.by_pixel(13, 11),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
          width = 242,
          height = 136,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  }
end

data:extend({
  beaconed_lab_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-lab-3",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-lab-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "g[lab]",
    place_result = "beaconed-lab-3",
    stack_size = 10
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-lab-3",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-lab-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "h",
    ingredients =
    {
      {"beaconed-lab-2", 1},
      {"speed-module-3", 14}
    },
    results = {
      {type = "item", name = "beaconed-lab-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 14}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-lab-3"
  }
})