data:extend({
  {
    type = "recipe",
    name = "beaconed-oil-refinery-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-oil-refinery-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "e",
    ingredients =
    {
      {"beaconed-oil-refinery", 1},
      {"speed-module-2", 20}
    },
    results = {
      {type = "item", name = "beaconed-oil-refinery-2", amount = 1},
      {type = "item", name = "speed-module", amount = 20}
    }
  }
})
data:extend({
  {
    type = "item",
    name = "beaconed-oil-refinery-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-oil-refinery-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "d[refinery]",
    place_result = "beaconed-oil-refinery-2",
    stack_size = 10
  },
})
data:extend({
  {
    type = "assembling-machine",
    name = "beaconed-oil-refinery-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-oil-refinery-2.png",
    icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.2, result = "beaconed-oil-refinery-2"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 6,
      max_entity_info_module_icons_per_row = 1,
      max_entity_info_module_icon_rows = 1,
    },
    scale_entity_info_icon = true,
    allowed_effects = {"productivity"},
    crafting_categories = {"oil-processing"},
    crafting_speed = 5.35,
    has_backer_name = true,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.0104,
      drain = "4814kW"
    },
    energy_usage = "5208kW",


    animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375},
        hr_version =
        {
          filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
          width = 386,
          height = 430,
          frame_count = 1,
          shift = util.by_pixel(0, -7.5),
          scale = 0.5
        }
      },
      {
        filename = "__Absorbed-Beacons__/graphics/entity/beaconed-oil-refinery/beaconed-oil-refinery-overlay.png",
        width = 512,
        height = 512,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        tint = {0.4,0.4,0,0},
        hr_version =
        {
          filename = "__Absorbed-Beacons__/graphics/entity/beaconed-oil-refinery/hr-beaconed-oil-refinery-overlay.png",
          width = 1024,
          height = 1024,
          frame_count = 1,
          shift = util.by_pixel(0, 0),
          tint = {0.4,0.4,0,0},
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
        width = 337,
        height = 213,
        frame_count = 1,
        shift = util.by_pixel(82.5, 26.5),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
          width = 674,
          height = 426,
          frame_count = 1,
          shift = util.by_pixel(82.5, 26.5),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }}),






    working_visualisations =
    {
      {
        north_position = util.by_pixel(34, -65),
        east_position = util.by_pixel(-52, -61),
        south_position = util.by_pixel(-59, -82),
        west_position = util.by_pixel(57, -58),
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = beaconed_oil_refinery_2_animation_speed,
          shift = util.by_pixel(0, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = beaconed_oil_refinery_2_animation_speed,
            scale = 0.5,
            shift = util.by_pixel(0, -14.25)
          }
        },
        light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    }
  },
})