beaconed_electric_mining_drill_3 = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
beaconed_electric_mining_drill_3.name = "beaconed-electric-mining-drill-3"
beaconed_electric_mining_drill_3.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-mining-drill-3.png"
beaconed_electric_mining_drill_3.minable.result = "beaconed-electric-mining-drill-3"
beaconed_electric_mining_drill_3.mining_speed = 2.25
beaconed_electric_mining_drill_3.energy_source.emissions_per_second_per_watt = 10 / 90000
beaconed_electric_mining_drill_3.energy_source.drain = "480kW"
beaconed_electric_mining_drill_3.energy_usage = "558kW"
beaconed_electric_mining_drill_3.allowed_effects = {"productivity", "pollution"}

beaconed_electric_mining_drill_3.module_specification.module_slots = 3

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_electric_mining_drill_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_electric_mining_drill_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_electric_mining_drill_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-mining-drill-3",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-mining-drill-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "a[items]-b[electric-mining-drill]",
    place_result = "beaconed-electric-mining-drill-3",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-mining-drill-3",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-mining-drill-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "j",
    ingredients =
    {
      {"beaconed-electric-mining-drill-2", 1},
      {"speed-module-3", 2}
    },
    results = {
      {type = "item", name = "beaconed-electric-mining-drill-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 2}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-electric-mining-drill-3"
  }
})