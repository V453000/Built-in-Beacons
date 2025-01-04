local original_oil_refinery = data.raw["assembling-machine"]["oil-refinery"]
local beaconed_data = {
  machine_energy_usage              = original_oil_refinery.energy_usage,
  machine_emissions                 = original_oil_refinery.energy_source.emissions_per_minute.pollution,
  machine_crafting_speed            = original_oil_refinery.crafting_speed,
  machine_module_slots              = original_oil_refinery.module_slots,
  beacon_count                      = global_oil_refinery_beacon_count,
  average_beacon_count              = global_oil_refinery_average_beacon_count,
  beacon_effect                     = global_beacon_transmission_effect,
  beacon_module_slots               = global_beacon_module_slots,
  beacon_module_speed_bonus         = global_speed_module_3_speed_bonus,
  beacon_module_energy_usage_bonus  = global_speed_module_3_energy_usage_bonus,
  machine_module_speed_bonus        = global_productivity_module_3_speed_bonus,
  machine_module_energy_usage_bonus = global_productivity_module_3_energy_usage_bonus,
  machine_module_productivity_bonus = global_productivity_module_3_productivity_bonus,
  machine_module_pollution_bonus    = global_productivity_module_3_pollution_bonus,
  original_animation_speed          = 0.75,
  tier_animation_speed_multiplier   = global_tier_3_animation_speed_multiplier,
  custom_animation_speed_multiplier = 1,
  emission_hack                     = 1
}
local beaconed_oil_refinery_3_animation_speed = beaconed_stats(beaconed_data).beaconed_animation_speed

beaconed_oil_refinery_3 = util.table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
beaconed_oil_refinery_3.name = "beaconed-oil-refinery-3"
beaconed_oil_refinery_3.icon = "__Built-in-Beacons__/graphics/icons/beaconed-oil-refinery-3.png"
beaconed_oil_refinery_3.minable.result = "beaconed-oil-refinery-3"
beaconed_oil_refinery_3.crafting_speed = beaconed_stats(beaconed_data).beaconed_crafting_speed
beaconed_oil_refinery_3.energy_source.emissions_per_minute.pollution = beaconed_stats(beaconed_data).beaconed_emissions_per_minute
beaconed_oil_refinery_3.energy_source.drain = beaconed_stats(beaconed_data).beaconed_drain_string
beaconed_oil_refinery_3.energy_usage = beaconed_stats(beaconed_data).beaconed_energy_usage_string
beaconed_oil_refinery_3.allowed_effects = {"productivity", "pollution"}
beaconed_oil_refinery_3.fast_replaceable_group = "oil-refinery"

if settings.startup["productivity-mode"].value == 'Modded Modules' then
  beaconed_oil_refinery_3.module_slots = data.raw["assembling-machine"]["oil-refinery"].module_slots * 2
  if settings.startup["show-module-slot-row-length"].value > 0 then
    beaconed_oil_refinery_3.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
  end
  if settings.startup["show-module-slot-rows"].value > 0 then
    beaconed_oil_refinery_3.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
  end
else
  beaconed_oil_refinery_3.module_slots = 0
  beaconed_oil_refinery_3.base_productivity = beaconed_stats(beaconed_data).beaconed_base_productivity
end


if settings.startup["modded-entity-graphics"].value == "ON" then
  local merge_layers = function (dest, src)
    for key, tab in pairs(dest) do
      if (tab.layers) then
        for i, layer in pairs(src[key].layers) do
          table.insert(tab.layers, layer)
        end
      end
    end
  end
  merge_layers(beaconed_oil_refinery_3.graphics_set.animation, make_4way_animation_from_spritesheet(
    {
      layers =
      {
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-oil-refinery/beaconed-oil-refinery-overlay.png",
          width = 171,
          height = 171,
          frame_count = 1,
          shift = util.by_pixel(-0.5, -17.5),
          tint = beaconed_oil_refinery_3_tint,
          hr_version =
          {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-oil-refinery/hr-beaconed-oil-refinery-overlay.png",
            width = 341,
            height = 341,
            frame_count = 1,
            shift = util.by_pixel(-0.25, -17.25),
            tint = beaconed_oil_refinery_3_tint,
            scale = 0.5
          }
        }
      }
    }
  )
)
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  local set_animation_speed = function(anim)
    if anim then
      anim.animation_speed = beaconed_oil_refinery_3_animation_speed
      if (anim.hr_version) then
        anim.hr_version.animation_speed = beaconed_oil_refinery_3_animation_speed
      end
    end 
  end

  for i,layer in pairs(beaconed_oil_refinery_3.graphics_set.working_visualisations) do
    set_animation_speed(layer.animation)
  end
end

data:extend({
  beaconed_oil_refinery_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-oil-refinery-3",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-oil-refinery-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "d[refinery]",
    place_result = "beaconed-oil-refinery-3",
    stack_size = 10,
    localised_description = {'item-description.beaconed-oil-refinery-3', tostring(global_oil_refinery_beacon_count)}
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-oil-refinery-3",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-oil-refinery-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons-3",
    order = "e",
    ingredients =
    {
      {type = "item", name = "beaconed-oil-refinery-2", amount = 1},
      {type = "item", name = "speed-module-3", amount = global_oil_refinery_average_beacon_count * global_beacon_module_slots}
    },
    results = {
      {type = "item", name = "beaconed-oil-refinery-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = global_oil_refinery_average_beacon_count * global_beacon_module_slots, show_details_in_recipe_tooltip = false}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-oil-refinery-3",
    localised_description = {'item-description.beaconed-oil-refinery-3', tostring(global_oil_refinery_beacon_count)}
  }
})

if global_logging == true then
  log(serpent.block( beaconed_data ))
  log(serpent.block( beaconed_stats(beaconed_data) ))
end