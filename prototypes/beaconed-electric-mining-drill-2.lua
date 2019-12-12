beaconed_electric_mining_drill_2 = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
beaconed_electric_mining_drill_2.name = "beaconed-electric-mining-drill-2"
beaconed_electric_mining_drill_2.icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill-2.png"
beaconed_electric_mining_drill_2.minable.result = "beaconed-electric-mining-drill-2"
beaconed_electric_mining_drill_2.next_upgrade = "beaconed-electric-mining-drill-3"
beaconed_electric_mining_drill_2.mining_speed = 1.55
beaconed_electric_mining_drill_2.energy_source.emissions_per_second_per_watt = 10 / 90000
beaconed_electric_mining_drill_2.energy_source.drain = "480kW"
beaconed_electric_mining_drill_2.energy_usage = "468kW"
beaconed_electric_mining_drill_2.allowed_effects = {"productivity", "pollution"}

beaconed_electric_mining_drill_2.module_specification.module_slots = 2

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_electric_mining_drill_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_electric_mining_drill_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

beaconed_electric_mining_drill_2_tint = {0.4*0.75, 0.4*0.75, 0, 0}

if settings.startup["modded-entity-graphics"].value == "ON" then
  beaconed_electric_mining_drill_2.animations = {
    north = {
      layers = {
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
          line_length = 8,
          width = 98,
          height = 113,
          frame_count = 64,
          animation_speed = beaconed_electric_drill_2_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(0, -8.5),
          run_mode = "forward-then-backward",
          hr_version =
          {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N.png",
            line_length = 8,
            width = 196,
            height = 226,
            frame_count = 64,
            animation_speed = beaconed_electric_drill_2_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(0, -8),
            run_mode = "forward-then-backward",
            scale = 0.5
          }
        },
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/beaconed-electric-mining-drill-N-overlay.png",
          width = 93,
          height = 108,
          line_length = 8,
          frame_count = 64,
          shift = util.by_pixel(0.5, -10),
          animation_speed = beaconed_electric_drill_2_animation_speed,
          tint = beaconed_electric_mining_drill_2_tint,
          run_mode = "forward-then-backward",
          hr_version = {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-beaconed-electric-mining-drill-N-overlay.png",
            priority = "high",
            width = 185,
            height = 215,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(0.25, -9.75),
            animation_speed = beaconed_electric_drill_2_animation_speed,
            tint = beaconed_electric_mining_drill_2_tint,
            scale = 0.5,
            run_mode = "forward-then-backward",
          }
        }
      }
    },
    east = {
      layers = {
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png",
          line_length = 8,
          width = 105,
          height = 98,
          frame_count = 64,
          animation_speed = beaconed_electric_drill_2_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(3.5, -1),
          run_mode = "forward-then-backward",
          hr_version =
          {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E.png",
            line_length = 8,
            width = 211,
            height = 197,
            frame_count = 64,
            animation_speed = beaconed_electric_drill_2_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(3.75, -1.25),
            run_mode = "forward-then-backward",
            scale = 0.5
          }
        },
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/beaconed-electric-mining-drill-E-overlay.png",
          width = 103,
          height = 89,
          line_length = 8,
          frame_count = 64,
          shift = util.by_pixel(2.5, -1.5),
          animation_speed = beaconed_electric_drill_2_animation_speed,
          tint = beaconed_electric_mining_drill_2_tint,
          run_mode = "forward-then-backward",
          hr_version = {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-beaconed-electric-mining-drill-E-overlay.png",
            priority = "high",
            width = 205,
            height = 178,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(2.75, -1.5),
            animation_speed = beaconed_electric_drill_2_animation_speed,
            tint = beaconed_electric_mining_drill_2_tint,
            run_mode = "forward-then-backward",
            scale = 0.5
          }
        }
      }
    },
    south = {
      layers = {
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
          line_length = 8,
          width = 98,
          height = 109,
          frame_count = 64,
          animation_speed = beaconed_electric_drill_2_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(0, -1.5),
          run_mode = "forward-then-backward",
          hr_version =
          {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S.png",
            line_length = 8,
            width = 196,
            height = 219,
            frame_count = 64,
            animation_speed = beaconed_electric_drill_2_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(0, -1.25),
            run_mode = "forward-then-backward",
            scale = 0.5
          }
        },
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/beaconed-electric-mining-drill-S-overlay.png",
          width = 92,
          height = 105,
          line_length = 8,
          frame_count = 64,
          shift = util.by_pixel(0, -3.5),
          animation_speed = beaconed_electric_drill_2_animation_speed,
          tint = beaconed_electric_mining_drill_2_tint,
          run_mode = "forward-then-backward",
          hr_version = {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-beaconed-electric-mining-drill-S-overlay.png",
            priority = "high",
            width = 184,
            height = 208,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(0, -3.5),
            animation_speed = beaconed_electric_drill_2_animation_speed,
            tint = beaconed_electric_mining_drill_2_tint,
            run_mode = "forward-then-backward",
            scale = 0.5
          }
        }
      }
    },
    west = {
      layers = {
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png",
          line_length = 8,
          width = 105,
          height = 98,
          frame_count = 64,
          animation_speed = beaconed_electric_drill_2_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(-3.5, -1),
          run_mode = "forward-then-backward",
          hr_version =
          {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W.png",
            line_length = 8,
            width = 211,
            height = 197,
            frame_count = 64,
            animation_speed = beaconed_electric_drill_2_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(-3.75, -0.75),
            run_mode = "forward-then-backward",
            scale = 0.5
          }
        },
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/beaconed-electric-mining-drill-W-overlay.png",
          width = 102,
          height = 90,
          line_length = 8,
          frame_count = 64,
          shift = util.by_pixel(-3, -1),
          animation_speed = beaconed_electric_drill_2_animation_speed,
          tint = beaconed_electric_mining_drill_2_tint,
          run_mode = "forward-then-backward",
          hr_version = {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-beaconed-electric-mining-drill-W-overlay.png",
            priority = "high",
            width = 204,
            height = 180,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(-3, -1),
            animation_speed = beaconed_electric_drill_2_animation_speed,
            tint = beaconed_electric_mining_drill_2_tint,
            run_mode = "forward-then-backward",
            scale = 0.5
          }
        }
      }
    }
  }
end

data:extend({
  beaconed_electric_mining_drill_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-mining-drill-2",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "a[items]-b[electric-mining-drill]",
    place_result = "beaconed-electric-mining-drill-2",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-mining-drill-2",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons-2",
    order = "j",
    ingredients =
    {
      {"beaconed-electric-mining-drill", 1},
      {"speed-module-2", 2}
    },
    results = {
      {type = "item", name = "beaconed-electric-mining-drill-2", amount = 1},
      {type = "item", name = "speed-module", amount = 2, show_details_in_recipe_tooltip = false}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-electric-mining-drill-2"
  }
})