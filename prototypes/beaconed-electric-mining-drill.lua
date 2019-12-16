local original_electric_mining_drill = data.raw["mining-drill"]["electric-mining-drill"]
local beaconed_data = {
  machine_energy_usage              = original_electric_mining_drill.energy_usage,
  machine_emissions                 = original_electric_mining_drill.energy_source.emissions_per_minute,
  machine_crafting_speed            = original_electric_mining_drill.mining_speed,
  machine_module_slots              = original_electric_mining_drill.module_specification.module_slots,
  beacon_count                      = global_electric_mining_drill_beacon_count,
  average_beacon_count              = global_electric_mining_drill_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_1_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_1_energy_usage_bonus,
  machine_module_speed_bonus        = global_speed_module_1_speed_bonus,
  machine_module_energy_usage_bonus = global_speed_module_1_energy_usage_bonus,
  original_animation_speed          = 1,
  tier_animation_speed_multiplier   = global_tier_1_animation_speed_multiplier,
  custom_animation_speed_multiplier = 1,
  emission_hack                     = 1
}
local beaconed_electric_drill_1_animation_speed = beaconed_stats(beaconed_data).beaconed_animation_speed

beaconed_electric_mining_drill = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
beaconed_electric_mining_drill.name = "beaconed-electric-mining-drill"
beaconed_electric_mining_drill.icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill.png"
beaconed_electric_mining_drill.minable.result = "beaconed-electric-mining-drill"
beaconed_electric_mining_drill.next_upgrade = "beaconed-electric-mining-drill-2"
beaconed_electric_mining_drill.mining_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed
beaconed_electric_mining_drill.energy_source.emissions_per_minute = beaconed_stats(beaconed_data).beaconed_emissions_per_minute
beaconed_electric_mining_drill.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string
beaconed_electric_mining_drill.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string
beaconed_electric_mining_drill.allowed_effects = {"productivity", "pollution"}

beaconed_electric_mining_drill.module_specification.module_slots = 1

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_electric_mining_drill.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_electric_mining_drill.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  beaconed_electric_mining_drill.animations = {
    north = {
      layers = {
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
          line_length = 8,
          width = 98,
          height = 113,
          frame_count = 64,
          animation_speed = beaconed_electric_drill_1_animation_speed,
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
            animation_speed = beaconed_electric_drill_1_animation_speed,
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
          animation_speed = beaconed_electric_drill_1_animation_speed,
          tint = beaconed_electric_mining_drill_1_tint,
          run_mode = "forward-then-backward",
          hr_version = {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-beaconed-electric-mining-drill-N-overlay.png",
            priority = "high",
            width = 185,
            height = 215,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(0.25, -9.75),
            animation_speed = beaconed_electric_drill_1_animation_speed,
            tint = beaconed_electric_mining_drill_1_tint,
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
          animation_speed = beaconed_electric_drill_1_animation_speed,
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
            animation_speed = beaconed_electric_drill_1_animation_speed,
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
          animation_speed = beaconed_electric_drill_1_animation_speed,
          tint = beaconed_electric_mining_drill_1_tint,
          run_mode = "forward-then-backward",
          hr_version = {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-beaconed-electric-mining-drill-E-overlay.png",
            priority = "high",
            width = 205,
            height = 178,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(2.75, -1.5),
            animation_speed = beaconed_electric_drill_1_animation_speed,
            tint = beaconed_electric_mining_drill_1_tint,
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
          animation_speed = beaconed_electric_drill_1_animation_speed,
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
            animation_speed = beaconed_electric_drill_1_animation_speed,
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
          animation_speed = beaconed_electric_drill_1_animation_speed,
          tint = beaconed_electric_mining_drill_1_tint,
          run_mode = "forward-then-backward",
          hr_version = {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-beaconed-electric-mining-drill-S-overlay.png",
            priority = "high",
            width = 184,
            height = 208,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(0, -3.5),
            animation_speed = beaconed_electric_drill_1_animation_speed,
            tint = beaconed_electric_mining_drill_1_tint,
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
          animation_speed = beaconed_electric_drill_1_animation_speed,
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
            animation_speed = beaconed_electric_drill_1_animation_speed,
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
          animation_speed = beaconed_electric_drill_1_animation_speed,
          tint = beaconed_electric_mining_drill_1_tint,
          run_mode = "forward-then-backward",
          hr_version = {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-mining-drill/hr-beaconed-electric-mining-drill-W-overlay.png",
            priority = "high",
            width = 204,
            height = 180,
            line_length = 8,
            frame_count = 64,
            shift = util.by_pixel(-3, -1),
            animation_speed = beaconed_electric_drill_1_animation_speed,
            tint = beaconed_electric_mining_drill_1_tint,
            run_mode = "forward-then-backward",
            scale = 0.5
          }
        }
      }
    }
  }
end

data:extend({
  beaconed_electric_mining_drill
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-mining-drill",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "a[items]-b[electric-mining-drill]",
    place_result = "beaconed-electric-mining-drill",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-mining-drill",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons",
    order = "j",
    ingredients =
    {
      {"electric-mining-drill", 1},
      {"beacon", global_electric_mining_drill_average_beacon_count},
      {"speed-module", global_electric_mining_drill_average_beacon_count * global_beacon_module_slots}
    },
    results = {
      {type = "item", name = "beaconed-electric-mining-drill", amount = 1}
    },
    allow_as_intermediate = false
  }
})