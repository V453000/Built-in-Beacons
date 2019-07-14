beaconed_electric_mining_drill_2 = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
beaconed_electric_mining_drill_2.name = "beaconed-electric-mining-drill-2"
beaconed_electric_mining_drill_2.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-mining-drill-2.png"
beaconed_electric_mining_drill_2.minable.result = "beaconed-electric-mining-drill-2"
beaconed_electric_mining_drill_2.next_upgrade = "beaconed-electric-mining-drill-3"
beaconed_electric_mining_drill_2.mining_speed = 1.55
beaconed_electric_mining_drill_2.energy_source.emissions_per_second_per_watt = 10 / 90000
beaconed_electric_mining_drill_2.energy_source.drain = "480kW"
beaconed_electric_mining_drill_2.energy_usage = "468kW"
beaconed_electric_mining_drill_2.allowed_effects = {"productivity", "pollution"}

beaconed_electric_mining_drill_2.module_specification.module_slots = 2

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_electric_mining_drill_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_electric_mining_drill_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_electric_mining_drill_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-mining-drill-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-mining-drill-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "a[items]-b[electric-mining-drill]",
    place_result = "beaconed-electric-mining-drill-2",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-mining-drill-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-electric-mining-drill-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "j",
    ingredients =
    {
      {"beaconed-electric-mining-drill", 1},
      {"speed-module-2", 2}
    },
    results = {
      {type = "item", name = "beaconed-electric-mining-drill-2", amount = 1},
      {type = "item", name = "speed-module", amount = 2}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-electric-mining-drill-2"
  }
})