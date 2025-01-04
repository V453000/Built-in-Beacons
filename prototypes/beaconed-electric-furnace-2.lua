local original_electric_furnace = data.raw["furnace"]["electric-furnace"]
local beaconed_data = {
  machine_energy_usage              = original_electric_furnace.energy_usage,
  machine_emissions                 = original_electric_furnace.energy_source.emissions_per_minute.pollution,
  machine_crafting_speed            = original_electric_furnace.crafting_speed,
  machine_module_slots              = original_electric_furnace.module_slots,
  beacon_count                      = global_electric_furnace_beacon_count,
  average_beacon_count              = global_electric_furnace_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_2_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_2_energy_usage_bonus,
  machine_module_speed_bonus        = global_productivity_module_2_speed_bonus,
  machine_module_energy_usage_bonus = global_productivity_module_2_energy_usage_bonus,
  machine_module_productivity_bonus = global_productivity_module_2_productivity_bonus,
  machine_module_pollution_bonus    = global_productivity_module_2_pollution_bonus,
  original_animation_speed          = 0.5,
  tier_animation_speed_multiplier   = global_tier_2_furnace_animation_speed_multiplier,
  custom_animation_speed_multiplier = 1,
  emission_hack                     = 1.01679
}
local beaconed_electric_furnace_2_animation_speed = beaconed_stats(beaconed_data).beaconed_animation_speed

beaconed_electric_furnace_2 = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
beaconed_electric_furnace_2.name = "beaconed-electric-furnace-2"
beaconed_electric_furnace_2.icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-furnace-2.png"
beaconed_electric_furnace_2.minable.result = "beaconed-electric-furnace-2"
beaconed_electric_furnace_2.next_upgrade = "beaconed-electric-furnace-3"
beaconed_electric_furnace_2.crafting_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed
beaconed_electric_furnace_2.energy_source.emissions_per_minute.pollution = beaconed_stats(beaconed_data).beaconed_emissions_per_minute
beaconed_electric_furnace_2.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string
beaconed_electric_furnace_2.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string
beaconed_electric_furnace_2.allowed_effects = {"productivity", "pollution"}

if settings.startup["productivity-mode"].value == 'Modded Modules' then
  beaconed_electric_furnace_2.module_slots = data.raw["furnace"]["electric-furnace"].module_slots * 2
  if settings.startup["show-module-slot-row-length"].value > 0 then
    beaconed_electric_furnace_2.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
  end
  if settings.startup["show-module-slot-rows"].value > 0 then
    beaconed_electric_furnace_2.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
  end
else
  beaconed_electric_furnace_2.module_slots = 0
  beaconed_electric_furnace_2.base_productivity = beaconed_stats(beaconed_data).beaconed_base_productivity
end

if settings.startup["modded-entity-graphics"].value == "ON" then
beaconed_electric_furnace_2.graphics_set.animation =
{
  layers =
  {
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace-2/beaconed-electric-furnace-2-base.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0},
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace-2/hr-beaconed-electric-furnace-2-base.png",
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
      tint = beaconed_electric_furnace_2_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/hr-beaconed-electric-furnace-overlay.png",
        priority = "high",
        width = 201,
        height = 200,
        frame_count = 1,
        shift = util.by_pixel(0.75, 0),
        tint = beaconed_electric_furnace_2_tint,
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

beaconed_electric_furnace_2.graphics_set.working_visualisations[2] =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
      priority = "high",
      width = 19,
      height = 13,
      frame_count = 4,
      animation_speed = beaconed_electric_furnace_2_animation_speed,
      shift = {-0.671875, -0.640625},
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
        priority = "high",
        width = 37,
        height = 25,
        frame_count = 4,
        animation_speed = beaconed_electric_furnace_2_animation_speed,
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
      animation_speed = beaconed_electric_furnace_2_animation_speed,
      shift = {-0.671875, -0.640625},
      tint = beaconed_electric_furnace_2_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/hr-beaconed-electric-furnace-propeller-1-overlay.png",
        priority = "high",
        width = 37,
        height = 25,
        frame_count = 4,
        animation_speed = beaconed_electric_furnace_2_animation_speed,
        shift = util.by_pixel(-20.5, -18.5),
        tint = beaconed_electric_furnace_2_tint,
        scale = 0.5
      }
    }
  }
}
beaconed_electric_furnace_2.graphics_set.working_visualisations[3] =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
      priority = "high",
      width = 12,
      height = 9,
      frame_count = 4,
      animation_speed = beaconed_electric_furnace_2_animation_speed,
      shift = {0.0625, -1.234375},
      hr_version =
      {
        filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
        priority = "high",
        width = 23,
        height = 15,
        frame_count = 4,
        animation_speed = beaconed_electric_furnace_2_animation_speed,
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
      animation_speed = beaconed_electric_furnace_2_animation_speed,
      shift = util.by_pixel(3.5, -38.5),
      tint = beaconed_electric_furnace_2_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-electric-furnace/hr-beaconed-electric-furnace-propeller-2-overlay.png",
        priority = "high",
        width = 23,
        height = 15,
        frame_count = 4,
        animation_speed = beaconed_electric_furnace_2_animation_speed,
        shift = util.by_pixel(3.25, -38.25),
        tint = beaconed_electric_furnace_2_tint,
        scale = 0.5
      }
    }
  }
}
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  local set_animation_speed = function(anim)
    if anim then
      anim.animation_speed = beaconed_electric_furnace_2_animation_speed
      if (anim.hr_version) then
        anim.hr_version.animation_speed = beaconed_electric_furnace_2_animation_speed
      end
    end 
  end
  for i,layer in pairs(beaconed_electric_furnace_2.graphics_set.working_visualisations) do
    set_animation_speed(layer.animation)
  end
end

data:extend({
  beaconed_electric_furnace_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-furnace-2",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-furnace-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "b",
    place_result = "beaconed-electric-furnace-2",
    stack_size = 50,
    localised_description = {'item-description.beaconed-electric-furnace-2', tostring(global_electric_furnace_beacon_count)}
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-furnace-2",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-furnace-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons-2",
    order = "b",
    ingredients =
    {
      {type = "item", name = "beaconed-electric-furnace", amount = 1},
      {type = "item", name = "speed-module-2", amount = global_electric_furnace_average_beacon_count * global_beacon_module_slots}
    },
    results = {
      {type = "item", name = "beaconed-electric-furnace-2", amount = 1},
      {type = "item", name = "speed-module", amount = global_electric_furnace_average_beacon_count * global_beacon_module_slots, show_details_in_recipe_tooltip = false}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-electric-furnace-2",
    localised_description = {'item-description.beaconed-electric-furnace-2', tostring(global_electric_furnace_beacon_count)}
  }
})

if global_logging == true then
  log(serpent.block( beaconed_data ))
  log(serpent.block( beaconed_stats(beaconed_data) ))
end