beaconed_electric_furnace_2 = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
beaconed_electric_furnace_2.name = "beaconed-electric-furnace-2"
beaconed_electric_furnace_2.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-furnace-2.png"
beaconed_electric_furnace_2.minable.result = "beaconed-electric-furnace-2"
beaconed_electric_furnace_2.next_upgrade = "beaconed-electric-furnace-3"
beaconed_electric_furnace_2.crafting_speed = 8.6
beaconed_electric_furnace_2.energy_source.emissions_per_second_per_watt = 1 / 180000
beaconed_electric_furnace_2.energy_source.drain = "3366kW"
beaconed_electric_furnace_2.energy_usage = "1692kW"
beaconed_electric_furnace_2.allowed_effects = {"productivity", "pollution"}

beaconed_electric_furnace_2.module_specification.module_slots = data.raw["furnace"]["electric-furnace"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_electric_furnace_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_electric_furnace_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
beaconed_electric_furnace_2.animation =
{
  layers =
  {
    {
      filename = "__Absorbed-Beacons__/graphics/entity/beaconed-electric-furnace-2/beaconed-electric-furnace-2-base.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0},
      hr_version =
      {
        filename = "__Absorbed-Beacons__/graphics/entity/beaconed-electric-furnace-2/hr-beaconed-electric-furnace-2-base.png",
        priority = "high",
        width = 239,
        height = 219,
        frame_count = 1,
        shift = util.by_pixel(0.75, 5.75),
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
  for i,layer in pairs(beaconed_electric_furnace_2.working_visualisations) do
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
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-furnace-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "b",
    place_result = "beaconed-electric-furnace-2",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-furnace-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-furnace-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "b",
    ingredients =
    {
      {"beaconed-electric-furnace", 1},
      {"speed-module-2", 14}
    },
    results = {
      {type = "item", name = "beaconed-electric-furnace-2", amount = 1},
      {type = "item", name = "speed-module", amount = 14}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-electric-furnace-2"
  }
})