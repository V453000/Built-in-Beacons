data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-furnace-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-furnace-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "b",
    ingredients =
    {
      {"beaconed-electric-furnace", 1},
      {"speed-module-2", 14}
    },
    results = {
      {type = "item", name = "beaconed-electric-furnace-2", amount = 1},
      {type = "item", name = "speed-module", amount = 14}
    }
  }
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-furnace-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-furnace-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "b",
    place_result = "beaconed-electric-furnace-2",
    stack_size = 50
  },
})

data:extend({
  {
    type = "furnace",
    name = "beaconed-electric-furnace-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-furnace-2.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "beaconed-electric-furnace-2"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 4,
      max_entity_info_module_icons_per_row = 1,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"productivity"},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    crafting_speed = 8.6,
    energy_usage = "1692kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.0057,
      drain = "3366kW"
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      layers =
      {
        {
          filename = "__Absorbed-Beacons__/graphics/entity/beaconed-electric-furnace-2/beaconed-electric-furnace-2-base.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0},
          hr_version =
          {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-electric-furnace-2/hr-beaconed-electric-furnace-2-base.png",
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
    },
    working_visualisations =
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
          animation_speed = beaconed_electric_furnace_2_animation_speed,
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
            priority = "high",
            width = 60,
            height = 56,
            frame_count = 12,
            shift = util.by_pixel(1.75, 32.75),
            animation_speed = beaconed_electric_furnace_2_animation_speed,
            scale = 0.5
          }
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
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
          animation_speed = beaconed_electric_furnace_2_animation_speed,
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            shift = util.by_pixel(-20.5, -18.5),
            animation_speed = beaconed_electric_furnace_2_animation_speed,
            scale = 0.5
          }
        }
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          shift = {0.0625, -1.234375},
          animation_speed = beaconed_electric_furnace_2_animation_speed,
          hr_version =
          {
            filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            shift = util.by_pixel(3.5, -38),
            animation_speed = beaconed_electric_furnace_2_animation_speed,
            scale = 0.5
          }
        }
      }
    },
    fast_replaceable_group = "furnace"
  },
})