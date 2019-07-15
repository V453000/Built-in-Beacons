beaconed_centrifuge_3 = util.table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
beaconed_centrifuge_3.name = "beaconed-centrifuge-3"
beaconed_centrifuge_3.icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge-3.png"
beaconed_centrifuge_3.minable.result = "beaconed-centrifuge-3"
beaconed_centrifuge_3.crafting_speed = 6.7
beaconed_centrifuge_3.energy_source.emissions_per_second_per_watt = 4 / 350000
beaconed_centrifuge_3.energy_source.drain = "3372kW"
beaconed_centrifuge_3.energy_usage = "3850kW"
beaconed_centrifuge_3.allowed_effects = {"productivity", "pollution"}
beaconed_centrifuge_3.fast_replaceable_group = "centrifuge"

beaconed_centrifuge_3.module_specification.module_slots = data.raw["assembling-machine"]["centrifuge"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_centrifuge_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_centrifuge_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_centrifuge_3.animation.layers) do
    layer.animation_speed = beaconed_centrifuge_3_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_3_animation_speed
    end
  end
  for i,layer in pairs(beaconed_centrifuge_3.idle_animation.layers) do
    layer.animation_speed = beaconed_centrifuge_3_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_3_animation_speed
    end
  end
end

data:extend({
  beaconed_centrifuge_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-centrifuge-3",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge-3.png",
    icon_size = 32,
    subgroup = "built-in-beacons-3",
    order = "g[centrifuge]",
    place_result = "beaconed-centrifuge-3",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-centrifuge-3",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge-3.png",
    icon_size = 32,
    subgroup = "built-in-beacons-3",
    order = "g",
    ingredients =
    {
      {"beaconed-centrifuge-2", 1},
      {"speed-module-3", 14}
    },
    results = {
      {type = "item", name = "beaconed-centrifuge-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 14}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-centrifuge-3"
  }
})
