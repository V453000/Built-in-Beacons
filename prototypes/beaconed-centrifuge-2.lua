beaconed_centrifuge_2 = util.table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
beaconed_centrifuge_2.name = "beaconed-centrifuge-2"
beaconed_centrifuge_2.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-centrifuge-2.png"
beaconed_centrifuge_2.minable.result = "beaconed-centrifuge-2"
beaconed_centrifuge_2.next_upgrade = "beaconed-centrifuge-3"
beaconed_centrifuge_2.crafting_speed = 4.3
beaconed_centrifuge_2.energy_source.emissions_per_second_per_watt = 4 / 350000
beaconed_centrifuge_2.energy_source.drain = "3372kW"
beaconed_centrifuge_2.energy_usage = "3290kW"
beaconed_centrifuge_2.allowed_effects = {"productivity", "pollution"}
beaconed_centrifuge_2.fast_replaceable_group = "centrifuge"

beaconed_centrifuge_2.module_specification.module_slots = data.raw["assembling-machine"]["centrifuge"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_centrifuge_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_centrifuge_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_centrifuge_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-centrifuge-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-centrifuge-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "g[centrifuge]",
    place_result = "beaconed-centrifuge-2",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-centrifuge-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-centrifuge-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "g",
    ingredients =
    {
      {"beaconed-centrifuge", 1},
      {"speed-module-2", 14}
    },
    results = {
      {type = "item", name = "beaconed-centrifuge-2", amount = 1},
      {type = "item", name = "speed-module", amount = 14}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-centrifuge-2"
  }
})