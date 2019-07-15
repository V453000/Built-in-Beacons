beaconed_electric_mining_drill = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
beaconed_electric_mining_drill.name = "beaconed-electric-mining-drill"
beaconed_electric_mining_drill.icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill.png"
beaconed_electric_mining_drill.minable.result = "beaconed-electric-mining-drill"
beaconed_electric_mining_drill.next_upgrade = "beaconed-electric-mining-drill-2"
beaconed_electric_mining_drill.mining_speed = 1.2
beaconed_electric_mining_drill.energy_source.emissions_per_second_per_watt = 10 / 90000
beaconed_electric_mining_drill.energy_source.drain = "480kW"
beaconed_electric_mining_drill.energy_usage = "405kW"
beaconed_electric_mining_drill.allowed_effects = {"productivity", "pollution"}

beaconed_electric_mining_drill.module_specification.module_slots = 1

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_electric_mining_drill.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_electric_mining_drill.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_electric_mining_drill
})
data:extend({
  {
    type = "item",
    name = "beaconed-electric-mining-drill",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "a[items]-b[electric-mining-drill]",
    place_result = "beaconed-electric-mining-drill",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-electric-mining-drill",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-electric-mining-drill.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "j",
    ingredients =
    {
      {"electric-mining-drill", 1},
      {"beacon", 1},
      {"speed-module", 2}
    },
    results = {
      {type = "item", name = "beaconed-electric-mining-drill", amount = 1}
    },
    allow_as_intermediate = false
  }
})