data:extend({
  {
    type = "recipe",
    name = "beaconed-assembling-machine-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-assembling-machine-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "c",
    ingredients =
    {
      {"beaconed-assembling-machine", 1},
      {"speed-module-2", 14}
    },
    results = {
      {type = "item", name = "beaconed-assembling-machine-2", amount = 1},
      {type = "item", name = "speed-module", amount = 14}
    },
    allow_as_intermediate = false
  }
})
data:extend({
  {
    type = "item",
    name = "beaconed-assembling-machine-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-assembling-machine-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "c[assembling-machine-3]",
    place_result = "beaconed-assembling-machine-2",
    stack_size = 50
  },
})

data:extend({
  {
    type = "assembling-machine",
    name = "beaconed-assembling-machine-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-assembling-machine-2.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "assembling-machine-2"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-3, -12),
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = beaconedassembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = beaconedassembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t3-2.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "beaconed-assembling-machine-3",
    --always_draw_idle_animation = true,
    animation =
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
          animation_speed = beaconed_assembling_machine_2_animation_speed,
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            animation_speed = beaconed_assembling_machine_2_animation_speed,
            scale = 0.5
          }
        },
        {
          filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
          width = 107,
          height = 109,
          frame_count = 1,
          repeat_count = 32,
          shift = util.by_pixel(0, 4),
          animation_speed = beaconed_assembling_machine_2_animation_speed,
          hr_version = {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 1,
            repeat_count = 32,
            shift = util.by_pixel(0, 4),
            animation_speed = beaconed_assembling_machine_2_animation_speed,
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
          tint = {0.4*0.75 ,0.35*0.75 ,0,0},
          blend_mode = "additive",
          animation_speed = beaconed_assembling_machine_2_animation_speed,
          hr_version = {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-3/hr-assembling-machine-3-mask.png",
            priority = "high",
            width = 156,
            height = 192,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(-0.5, -11),
            tint = {0.4*0.75 ,0.35*0.75 ,0,0},
            blend_mode = "additive",
            animation_speed = beaconed_assembling_machine_2_animation_speed,
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
          animation_speed = beaconed_assembling_machine_2_animation_speed,
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
            animation_speed = beaconed_assembling_machine_2_animation_speed,
            scale = 0.5
          }
        }
      }
    },

    crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = 5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.011,
      drain = "3367kW"
    },
    energy_usage = "3975kW",
    module_specification =
    {
      module_slots = 8,
      module_info_max_icons_per_row = 1,
      module_info_max_icon_rows = 1,
    },
    allowed_effects = {"productivity"}
  },
})