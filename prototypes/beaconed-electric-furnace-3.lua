beaconed_electric_furnace_3 = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
beaconed_electric_furnace_3.name = "beaconed-electric-furnace-3"
beaconed_electric_furnace_3.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-furnace-3.png"
beaconed_electric_furnace_3.minable.result = "beaconed-electric-furnace-3"
beaconed_electric_furnace_3.crafting_speed = 13.4
beaconed_electric_furnace_3.energy_source.emissions_per_second_per_watt = 1 / 180000
beaconed_electric_furnace_3.energy_source.drain = "3366kW"
beaconed_electric_furnace_3.energy_usage = "1980kW"
beaconed_electric_furnace_3.allowed_effects = {"productivity", "pollution"}

beaconed_electric_furnace_3.module_specification.module_slots = data.raw["furnace"]["electric-furnace"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_electric_furnace_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_electric_furnace_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == true then
beaconed_electric_furnace_3.animation =
{
  layers =
  {
    {
      filename = "__Absorbed-Beacons__/graphics/entity/beaconed-electric-furnace-3/beaconed-electric-furnace-3-base.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0},
      hr_version =
      {
        filename = "__Absorbed-Beacons__/graphics/entity/beaconed-electric-furnace-3/hr-beaconed-electric-furnace-3-base.png",
        priority = "high",
        width = 239,
        height = 219,
        frame_count = 1,
        shift = util.by_pixel(0.75, 5.75),
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0},
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
        priority = "high",
        width = 227,
        height = 171,
        frame_count = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(11.25, 7.75),
        scale = 0.5
      }
    }
  }
}
beaconed_electric_furnace_3.working_visualisations =
{
  {
    animation =
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
      priority = "high",
      width = 25,
      height = 15,
      frame_count = 12,
      shift = {0.015625, 0.890625},
      animation_speed = beaconed_electric_furnace_3_animation_speed,
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
        priority = "high",
        width = 60,
        height = 56,
        frame_count = 12,
        shift = util.by_pixel(1.75, 32.75),
        animation_speed = beaconed_electric_furnace_3_animation_speed,
        scale = 0.5
      }
    },
    light = {intensity = 0.8, size = 12, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
  },
  {
    animation =
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
      priority = "high",
      width = 19,
      height = 13,
      frame_count = 4,
      shift = {-0.671875, -0.640625},
      animation_speed = beaconed_electric_furnace_3_animation_speed,
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
        priority = "high",
        width = 37,
        height = 25,
        frame_count = 4,
        shift = util.by_pixel(-20.5, -18.5),
        animation_speed = beaconed_electric_furnace_3_animation_speed,
        scale = 0.5
      }
    }
  },
  {
    animation =
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
      priority = "high",
      width = 25,
      height = 15,
      frame_count = 12,
      shift = {0.015625, 0.890625},
      animation_speed = beaconed_electric_furnace_3_animation_speed,
      tint = {1,1,1,0},
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
        priority = "high",
        width = 60,
        height = 56,
        frame_count = 12,
        shift = util.by_pixel(1.75, 32.75),
        animation_speed = beaconed_electric_furnace_3_animation_speed,
        tint = {1,1,1,0},
        scale = 0.5
      }
    },
    --light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
  },
  {
    animation =
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
      priority = "high",
      width = 25,
      height = 15,
      frame_count = 12,
      shift = {0.015625, 0.890625},
      animation_speed = beaconed_electric_furnace_3_animation_speed,
      tint = {1,1,1,0},
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
        priority = "high",
        width = 60,
        height = 56,
        frame_count = 12,
        shift = util.by_pixel(1.75, 32.75),
        animation_speed = beaconed_electric_furnace_3_animation_speed,
        tint = {1,1,1,0},
        scale = 0.5
      }
    },
    --light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
  },
  --{
  --  animation =
  --  {
  --    filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
  --    priority = "high",
  --    width = 25,
  --    height = 15,
  --    frame_count = 12,
  --    shift = {0.015625, 0.890625},
  --    animation_speed = beaconed_electric_furnace_3_animation_speed,
  --    tint = {1,1,1,0},
  --    hr_version =
  --    {
  --      filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
  --      priority = "high",
  --      width = 60,
  --      height = 56,
  --      frame_count = 12,
  --      shift = util.by_pixel(1.75, 32.75),
  --      animation_speed = beaconed_electric_furnace_3_animation_speed,
  --      tint = {1,1,1,0},
  --      scale = 0.5
  --    }
  --  },
  --  light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
  --},
  {
    animation =
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
      priority = "high",
      width = 12,
      height = 9,
      frame_count = 4,
      shift = {0.0625, -1.234375},
      animation_speed = beaconed_electric_furnace_3_animation_speed,
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
        priority = "high",
        width = 23,
        height = 15,
        frame_count = 4,
        shift = util.by_pixel(3.5, -38),
        animation_speed = beaconed_electric_furnace_3_animation_speed,
        scale = 0.5
      }
    }
  }
}
end

data:extend({
  beaconed_electric_furnace_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-furnace-3",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-furnace-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "b",
    place_result = "beaconed-electric-furnace-3",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-furnace-3",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-furnace-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "b",
    ingredients =
    {
      {"beaconed-electric-furnace-2", 1},
      {"speed-module-3", 14}
    },
    results = {
      {type = "item", name = "beaconed-electric-furnace-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 14}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-electric-furnace-3"
  }
})