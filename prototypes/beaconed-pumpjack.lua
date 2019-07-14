beaconed_pumpjack = util.table.deepcopy(data.raw["mining-drill"]["pumpjack"])
beaconed_pumpjack.name = "beaconed-pumpjack"
beaconed_pumpjack.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-pumpjack.png"
beaconed_pumpjack.minable.result = "beaconed-pumpjack"
beaconed_pumpjack.next_upgrade = "beaconed-pumpjack-2"
beaconed_pumpjack.mining_speed = 2.2
beaconed_pumpjack.energy_source.emissions_per_second_per_watt = 10 / 90000
beaconed_pumpjack.energy_source.drain = "480kW"
beaconed_pumpjack.energy_usage = "360kW"
beaconed_pumpjack.allowed_effects = {"productivity", "pollution"}
beaconed_pumpjack.fast_replaceable_group = "pumpjack"

beaconed_pumpjack.module_specification.module_slots = 1

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_pumpjack.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_pumpjack.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == true then
  beaconed_pumpjack.animations =
  {
    north =
    {
      layers =
      {
        {
          priority = "high",
          filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
          line_length = 8,
          width = 104,
          height = 102,
          frame_count = 40,
          shift = util.by_pixel(-4, -24),
          animation_speed = beaconed_pumpjack_1_animation_speed,
          hr_version =
          {
            priority = "high",
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead.png",
            animation_speed = beaconed_pumpjack_1_animation_speed,
            scale = 0.5,
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24)
          }
        },
        {
          priority = "high",
          filename = "__Absorbed-Beacons__/graphics/entity/beaconed-pumpjack/pumpjack-horsehead-mask.png",
          line_length = 8,
          width = 104,
          height = 102,
          frame_count = 40,
          shift = util.by_pixel(-4, -24),
          --blend_mode = "additive",
          tint = {0.4*0.9, 0.2*0.9, 0, 0},
          animation_speed = beaconed_pumpjack_3_animation_speed,
          hr_version =
          {
            priority = "high",
            filename = "__Absorbed-Beacons__/graphics/entity/beaconed-pumpjack/hr-pumpjack-horsehead-mask.png",
            animation_speed = beaconed_pumpjack_3_animation_speed,
            scale = 0.5,
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24),
            tint = {0.4*0.9, 0.2*0.9, 0, 0},
          }
        },
        {
          priority = "high",
          filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
          animation_speed = beaconed_pumpjack_1_animation_speed,
          draw_as_shadow = true,
          line_length = 8,
          width = 155,
          height = 41,
          frame_count = 40,
          shift = util.by_pixel(17.5, 14.5),
          hr_version =
          {
            priority = "high",
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = beaconed_pumpjack_1_animation_speed,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.5,
            shift = util.by_pixel(17.75, 14.5)
          }
        }
      }
    }
  }
end

data:extend({
  beaconed_pumpjack
})
data:extend({
  {
    type = "item",
    name = "beaconed-pumpjack",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-pumpjack.png",
    icon_size = 32,
    subgroup = "absorbed-beacons",
    order = "b[fluids]-b[pumpjack]",
    place_result = "beaconed-pumpjack",
    stack_size = 20
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-pumpjack",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-pumpjack.png",
    icon_size = 32,
    subgroup = "absorbed-beacons",
    order = "k",
    ingredients =
    {
      {"pumpjack", 1},
      {"beacon", 1},
      {"speed-module", 2}
    },
    results = {
      {type = "item", name = "beaconed-pumpjack", amount = 1}
    },
    allow_as_intermediate = false
  }
})