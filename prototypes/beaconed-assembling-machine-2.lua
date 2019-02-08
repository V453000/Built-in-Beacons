data:extend({
  {
    type = "recipe",
    name = "beaconed-assembling-machine-2",
    enabled = true,
    ingredients =
    {
      {"beaconed-assembling-machine", 1},
      {"speed-module-2", 16}
    },
    result = "beaconed-assembling-machine-2"
  }
})
data:extend({
  {
    type = "item",
    name = "beaconed-assembling-machine-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-assembling-machine-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "b",
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
    --always_draw_idle_animation = true,
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
          priority = "high",
          width = 108,
          height = 110,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          animation_speed = beaconed_assembling_machine_2_animation_speed,
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            animation_speed = beaconed_assembling_machine_2_animation_speed,
            scale = 0.5
          }
        },
        {
          stripes =
          {
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--1
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--2
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--3
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--4
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--5
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--6
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--7
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--8
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--9
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--10
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--11
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--12
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--13
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--14
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--15
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--16
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--17
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--18
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--19
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--20
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--21
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--22
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--23
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--24
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--25
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--26
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--27
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--28
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--29
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--30
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--31
            {
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
            width_in_frames = 1,
            height_in_frames = 1,
            },--32
          },
          priority = "high",
          width = 107,
          height = 109,
          frame_count = 32,
          shift = util.by_pixel(-0.5, -0.5),
          animation_speed = beaconed_assembling_machine_2_animation_speed,
          hr_version =
          {
            stripes =
              {
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--1
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--2
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--3
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--4
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--5
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--6
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--7
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--8
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--9
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--10
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--11
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--12
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--13
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--14
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--15
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--16
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--17
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--18
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--19
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--20
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--21
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--22
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--23
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--24
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--25
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--26
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--27
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--28
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--29
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--30
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--31
                {
                filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
                width_in_frames = 1,
                height_in_frames = 1,
                },--32
              },
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            shift = util.by_pixel(0, -0.75),
            animation_speed = beaconed_assembling_machine_2_animation_speed,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
          priority = "high",
          width = 98,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(12, 5),
          animation_speed = beaconed_assembling_machine_2_animation_speed,
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
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
    energy_usage = "2226kW",
    module_specification =
    {
      module_slots = 8
    },
    allowed_effects = {"productivity"}
  },
})