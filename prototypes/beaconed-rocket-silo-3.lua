beaconed_rocket_silo_3 = util.table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
beaconed_rocket_silo_3.name = "beaconed-rocket-silo-3"
beaconed_rocket_silo_3.icon = "__Built-in-Beacons__/graphics/icons/beaconed-rocket-silo-3.png"
beaconed_rocket_silo_3.minable.result = "beaconed-rocket-silo-3"
beaconed_rocket_silo_3.crafting_speed = 10.4
beaconed_rocket_silo_3.energy_usage = "4550kW"
beaconed_rocket_silo_3.energy_source.drain = "9608kW"
beaconed_rocket_silo_3.lamp_energy_usage = "10kW"
beaconed_rocket_silo_3.active_energy_usage = "72800kW"
beaconed_rocket_silo_3.allowed_effects = {"productivity", "pollution"}
beaconed_rocket_silo_3.fast_replaceable_group = "rocket-silo"
beaconed_rocket_silo_3.rocket_entity = "beaconed-rocket-3"

beaconed_rocket_silo_3.module_specification.module_slots = data.raw["rocket-silo"]["rocket-silo"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_rocket_silo_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_rocket_silo_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end


beaconed_rocket_3 = util.table.deepcopy(data.raw['rocket-silo-rocket']['rocket-silo-rocket'])
beaconed_rocket_3.name = "beaconed-rocket-3"

beaconed_rocket_silo_3_tint = {0.48*0.8, 0.6*0.8, 0, 0}
beaconed_rocket_3_tint      = {0.48*0.5, 0.6*0.5, 0, 0}
--[[
if settings.startup["modded-entity-graphics"].value == "ON" then
  beaconed_rocket_silo_3.base_day_sprite = 
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/rocket-silo/06-rocket-silo.png",
        width = 300,
        height = 300,
        shift = util.by_pixel(2, -2),
        hr_version =
        {
          filename = "__base__/graphics/entity/rocket-silo/hr-06-rocket-silo.png",
          width = 608,
          height = 596,
          shift = util.by_pixel(3, -1),
          scale = 0.5
        }
      },--layer from base game
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/beaconed-06-rocket-silo-overlay.png",
        width = 292,
        height = 293,
        frame_count = 1,
        shift = util.by_pixel(1, -2.5),
        tint = beaconed_rocket_silo_3_tint,
        hr_version =
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/hr-beaconed-06-rocket-silo-overlay.png",
          width = 583,
          height = 586,
          frame_count = 1,
          shift = util.by_pixel(0.75, -2.5),
          tint = beaconed_rocket_silo_3_tint,
          scale = 0.5
        }
      }
    }
  }

  beaconed_rocket_silo_3.satellite_animation = 
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/rocket-silo/15-rocket-silo-turbine.png",
        priority = "medium",
        width = 28,
        height = 46,
        frame_count = 32,
        line_length = 8,
        animation_speed = 0.4,
        shift = util.by_pixel(-100, 110),
        hr_version = {
          filename = "__base__/graphics/entity/rocket-silo/hr-15-rocket-silo-turbine.png",
          priority = "medium",
          width = 54,
          height = 88,
          frame_count = 32,
          line_length = 8,
          animation_speed = 0.4,
          shift = util.by_pixel(-100, 111),
          scale = 0.5
        }
      },--layer from base game
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/beaconed-15-rocket-silo-turbine-overlay.png",
        priority = "medium",
        width = 28,
        height = 45,
        frame_count = 32,
        line_length = 8,
        animation_speed = 0.4,
        shift = util.by_pixel(-100, 111.5),
        tint = beaconed_rocket_silo_3_tint,
        hr_version = {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/hr-beaconed-15-rocket-silo-turbine-overlay.png",
          priority = "medium",
          width = 55,
          height = 89,
          frame_count = 32,
          line_length = 8,
          animation_speed = 0.4,
          shift = util.by_pixel(-99.75, 111.25),
          tint = beaconed_rocket_silo_3_tint,
          scale = 0.5
        }
      },
    }
  }

  beaconed_rocket_silo_3.base_front_sprite =
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/rocket-silo/14-rocket-silo-front.png",
        width = 292,
        height = 132,
        shift = util.by_pixel(-2, 78),
        hr_version =
        {
          filename = "__base__/graphics/entity/rocket-silo/hr-14-rocket-silo-front.png",
          width = 580,
          height = 262,
          shift = util.by_pixel(-1, 78),
          scale = 0.5
        }
      },
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/beaconed-14-rocket-silo-front-overlay.png",
        width = 289,
        height = 132,
        shift = util.by_pixel(-0.5, 78),
        tint = beaconed_rocket_silo_3_tint,
        hr_version =
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/hr-beaconed-14-rocket-silo-front-overlay.png",
          width = 578,
          height = 263,
          shift = util.by_pixel(-0.5, 78.25),
          tint = beaconed_rocket_silo_3_tint,
          scale = 0.5
        }
      },
    }
  }

  beaconed_rocket_silo_3.arm_01_back_animation =
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/rocket-silo/08-rocket-silo-arms-back.png",
        priority = "medium",
        width = 66,
        height = 76,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(-54, -84),
        hr_version =
        {
          filename = "__base__/graphics/entity/rocket-silo/hr-08-rocket-silo-arms-back.png",
          priority = "medium",
          width = 128,
          height = 150,
          frame_count = 32,
          line_length = 32,
          animation_speed = 0.3,
          shift = util.by_pixel(-53, -84),
          scale = 0.5
        }
      },
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/beaconed-08-rocket-silo-arms-back-overlay.png",
        priority = "medium",
        width = 64,
        height = 75,
        frame_count = 32,
        line_length = 8,
        animation_speed = 0.3,
        shift = util.by_pixel(-53, -83.5),
        tint = beaconed_rocket_silo_3_tint,
        hr_version =
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/hr-beaconed-08-rocket-silo-arms-back-overlay.png",
          priority = "medium",
          width = 127,
          height = 149,
          frame_count = 32,
          line_length = 8,
          animation_speed = 0.3,
          shift = util.by_pixel(-52.75, -83.25),
          tint = beaconed_rocket_silo_3_tint,
          scale = 0.5
        }
      },
    }
  }
  
  beaconed_rocket_silo_3.arm_02_right_animation =
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/rocket-silo/08-rocket-silo-arms-right.png",
        priority = "medium",
        width = 94,
        height = 94,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(100, -38),
        hr_version =
        {
          filename = "__base__/graphics/entity/rocket-silo/hr-08-rocket-silo-arms-right.png",
          priority = "medium",
          width = 182,
          height = 188,
          frame_count = 32,
          line_length = 32,
          animation_speed = 0.3,
          shift = util.by_pixel(101, -38),
          scale = 0.5
        }
      },
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/beaconed-08-rocket-silo-arms-right-overlay.png",
        priority = "medium",
        width = 91,
        height = 95,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(101.5, -37.5),
        tint = beaconed_rocket_silo_3_tint,
        hr_version =
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/hr-beaconed-08-rocket-silo-arms-right-overlay.png",
          priority = "medium",
          width = 182,
          height = 188,
          frame_count = 32,
          line_length = 32,
          animation_speed = 0.3,
          shift = util.by_pixel(101.5, -37.5),
          tint = beaconed_rocket_silo_3_tint,
          scale = 0.5
        }
      },  
    }
  }

  beaconed_rocket_silo_3.arm_03_front_animation =
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/rocket-silo/13-rocket-silo-arms-front.png",
        priority = "medium",
        width = 66,
        height = 114,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(-52, 16),
        hr_version =
        {
          filename = "__base__/graphics/entity/rocket-silo/hr-13-rocket-silo-arms-front.png",
          priority = "medium",
          width = 126,
          height = 228,
          frame_count = 32,
          line_length = 32,
          animation_speed = 0.3,
          shift = util.by_pixel(-51, 16),
          scale = 0.5
        }
      },
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/hr-beaconed-13-rocket-silo-arms-front-overlay.png",
        priority = "medium",
        width = 64,
        height = 115,
        frame_count = 32,
        line_length = 32,
        animation_speed = 0.3,
        shift = util.by_pixel(-51, 16.5),
        tint = beaconed_rocket_silo_3_tint,
        hr_version =
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/hr-beaconed-13-rocket-silo-arms-front-overlay.png",
          priority = "medium",
          width = 126,
          height = 228,
          frame_count = 32,
          line_length = 32,
          animation_speed = 0.3,
          shift = util.by_pixel(-51, 16.5),
          tint = beaconed_rocket_silo_3_tint,
          scale = 0.5
        }
      },
    }
  }

  beaconed_rocket_3.rocket_sprite = 
  {
    layers =
    {
      {
        filename = "__base__/graphics/entity/rocket-silo/02-rocket.png",
        width = 154,
        height = 300,
        shift = util.by_pixel(-4, -28+112),
        hr_version = {
          filename = "__base__/graphics/entity/rocket-silo/hr-02-rocket.png",
          width = 310,
          height = 596,
          shift = util.by_pixel(-5, -27+112),
          scale = 0.5
        }
      },
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/beaconed-02-rocket-overlay.png",
        width = 155,
        height = 298,
        shift = util.by_pixel(-4.5, -26+112),
        tint = beaconed_rocket_3_tint,
        hr_version = {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-rocket-silo/hr-beaconed-02-rocket-overlay.png",
          width = 308,
          height = 594,
          shift = util.by_pixel(-4.5, -26+112),
          tint = beaconed_rocket_3_tint,
          scale = 0.5
        }
      }
    }
  }
end
--]]



data:extend({
  beaconed_rocket_silo_3,
  beaconed_rocket_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-rocket-silo-3",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-rocket-silo-3.png",
    icon_size = 32,
    subgroup = "built-in-beacons-3",
    order = "e[rocket-silo]",
    place_result = "beaconed-rocket-silo-3",
    stack_size = 1
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-rocket-silo-3",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-rocket-silo-3.png",
    icon_size = 32,
    subgroup = "built-in-beacons-3",
    order = "i",
    ingredients =
    {
      {"beaconed-rocket-silo-2", 1},
      {"speed-module-3", 40}
    },
    results = {
      {type = "item", name = "beaconed-rocket-silo-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 40}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-rocket-silo-3"
  }
})