beaconed_electric_furnace = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
beaconed_electric_furnace.name = "beaconed-electric-furnace"
beaconed_electric_furnace.icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-furnace.png"
beaconed_electric_furnace.minable.result = "beaconed-electric-furnace"
beaconed_electric_furnace.next_upgrade = "beaconed-electric-furnace-2"
beaconed_electric_furnace.crafting_speed = 6.2
beaconed_electric_furnace.energy_source.emissions_per_second_per_watt = 1 / 180000
beaconed_electric_furnace.energy_source.drain = "3366kW"
beaconed_electric_furnace.energy_usage = "1404kW"
beaconed_electric_furnace.allowed_effects = {"productivity", "pollution"}

beaconed_electric_furnace.module_specification.module_slots = data.raw["furnace"]["electric-furnace"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_electric_furnace.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_electric_furnace.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

beaconed_electric_furnace_1_tint = {0.4, 0.2, 0, 0}
if settings.startup["modded-entity-graphics"].value == "ON" then
beaconed_electric_furnace.animation =
{
  layers =
  {
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/beaconed-electric-furnace-base.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0},
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/hr-beaconed-electric-furnace-base.png",
        priority = "high",
        width = 239,
        height = 219,
        frame_count = 1,
        shift = util.by_pixel(0.75, 5.75),
        scale = 0.5
      }
    },
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/beaconed-electric-furnace-overlay.png",
      priority = "high",
      width = 101,
      height = 101,
      frame_count = 1,
      shift = util.by_pixel(1, 0),
      tint = beaconed_electric_furnace_1_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/hr-beaconed-electric-furnace-overlay.png",
        priority = "high",
        width = 201,
        height = 200,
        frame_count = 1,
        shift = util.by_pixel(0.75, 0),
        tint = beaconed_electric_furnace_1_tint,
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

beaconed_electric_furnace.working_visualisations[2].animation =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
      priority = "high",
      width = 19,
      height = 13,
      frame_count = 4,
      animation_speed = 0.5,
      shift = {-0.671875, -0.640625},
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
        priority = "high",
        width = 37,
        height = 25,
        frame_count = 4,
        animation_speed = 0.5,
        shift = util.by_pixel(-20.5, -18.5),
        scale = 0.5
      }
    },
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/beaconed-electric-furnace-propeller-1-overlay.png",
      priority = "high",
      width = 19,
      height = 13,
      frame_count = 4,
      animation_speed = 0.5,
      shift = {-0.671875, -0.640625},
      tint = beaconed_electric_furnace_1_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/hr-beaconed-electric-furnace-propeller-1-overlay.png",
        priority = "high",
        width = 37,
        height = 25,
        frame_count = 4,
        animation_speed = 0.5,
        shift = util.by_pixel(-20.5, -18.5),
        tint = beaconed_electric_furnace_1_tint,
        scale = 0.5
      }
    }
  }
}
beaconed_electric_furnace.working_visualisations[3].animation =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
      priority = "high",
      width = 12,
      height = 9,
      frame_count = 4,
      animation_speed = 0.5,
      shift = {0.0625, -1.234375},
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
        priority = "high",
        width = 23,
        height = 15,
        frame_count = 4,
        animation_speed = 0.5,
        shift = util.by_pixel(3.5, -38),
        scale = 0.5
      }
    },
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/beaconed-electric-furnace-propeller-2-overlay.png",
      priority = "high",
      width = 12,
      height = 8,
      frame_count = 4,
      animation_speed = 0.5,
      shift = util.by_pixel(3.5, -38.5),
      tint = beaconed_electric_furnace_1_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/hr-beaconed-electric-furnace-propeller-2-overlay.png",
        priority = "high",
        width = 23,
        height = 15,
        frame_count = 4,
        animation_speed = 0.5,
        shift = util.by_pixel(3.25, -38.25),
        tint = beaconed_electric_furnace_1_tint,
        scale = 0.5
      }
    }
  }
}
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  local set_animation_speed = function(anim)
    if anim then
      anim.animation_speed = beaconed_electric_furnace_1_animation_speed
      if (anim.hr_version) then
        anim.hr_version.animation_speed = beaconed_electric_furnace_1_animation_speed
      end
    end 
  end
  for i,layer in pairs(beaconed_electric_furnace.working_visualisations) do
    set_animation_speed(layer.animation)
  end
end

data:extend({
  beaconed_electric_furnace
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-furnace",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-furnace.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "b",
    place_result = "beaconed-electric-furnace",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-furnace",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-furnace.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons",
    order = "b",
    ingredients =
    {
      {"electric-furnace", 1},
      {"beacon", 7},
      {"speed-module", 14}
    },
    results = {
      {type = "item", name = "beaconed-electric-furnace", amount = 1}
    },
    allow_as_intermediate = false
  }
})

