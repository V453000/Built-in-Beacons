beaconed_centrifuge = util.table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
beaconed_centrifuge.name = "beaconed-centrifuge"
beaconed_centrifuge.icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge.png"
beaconed_centrifuge.minable.result = "beaconed-centrifuge"
beaconed_centrifuge.next_upgrade = "beaconed-centrifuge-2"
beaconed_centrifuge.crafting_speed = 3.1
beaconed_centrifuge.energy_source.emissions_per_second_per_watt = 4 / 350000
beaconed_centrifuge.energy_source.drain = "3372kW"
beaconed_centrifuge.energy_usage = "2730kW"
beaconed_centrifuge.allowed_effects = {"productivity", "pollution"}
beaconed_centrifuge.fast_replaceable_group = "centrifuge"

beaconed_centrifuge.module_specification.module_slots = data.raw["assembling-machine"]["centrifuge"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_centrifuge.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_centrifuge.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_centrifuge.animation.layers) do
    layer.animation_speed = beaconed_centrifuge_1_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_1_animation_speed
    end
  end
  for i,layer in pairs(beaconed_centrifuge.idle_animation.layers) do
    layer.animation_speed = beaconed_centrifuge_1_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_centrifuge_1_animation_speed
    end
  end
end

data:extend({
  beaconed_centrifuge
})
data:extend({
  {
    type = "item",
    name = "beaconed-centrifuge",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "g[centrifuge]",
    place_result = "beaconed-centrifuge",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-centrifuge",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-centrifuge.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "g",
    ingredients =
    {
      {"centrifuge", 1},
      {"beacon", 7},
      {"speed-module", 14}
    },
    results = {
      {type = "item", name = "beaconed-centrifuge", amount = 1},
    },
    allow_as_intermediate = false
  }
})
