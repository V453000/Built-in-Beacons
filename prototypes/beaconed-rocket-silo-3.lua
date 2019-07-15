beaconed_rocket_silo_3 = util.table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
beaconed_rocket_silo_3.name = "beaconed-rocket-silo-3"
beaconed_rocket_silo_3.icon = "__Built-in-Beacons__/graphics/icons/beaconed-rocket-silo-3.png"
beaconed_rocket_silo_3.minable.result = "beaconed-rocket-silo-3"
beaconed_rocket_silo_3.crafting_speed = 10.4
beaconed_rocket_silo_3.energy_usage = "4550kW"
beaconed_rocket_silo_3.idle_energy_usage = "9608kW"
beaconed_rocket_silo_3.lamp_energy_usage = "10kW"
beaconed_rocket_silo_3.active_energy_usage = "72800kW"
beaconed_rocket_silo_3.allowed_effects = {"productivity", "pollution"}
beaconed_rocket_silo_3.fast_replaceable_group = "rocket-silo"

beaconed_rocket_silo_3.module_specification.module_slots = data.raw["rocket-silo"]["rocket-silo"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_rocket_silo_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_rocket_silo_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_rocket_silo_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-rocket-silo-3",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-rocket-silo-3.png",
    icon_size = 32,
    subgroup = "built-in-beacons-3",
    order = "e[rocket-silo]",
    place_result = "beaconed-rocket-silo-3",
    stack_size = 1
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-rocket-silo-3",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-rocket-silo-3.png",
    icon_size = 32,
    subgroup = "built-in-beacons-3",
    order = "i",
    ingredients =
    {
      {"beaconed-rocket-silo-2", 1},
      {"speed-module-3", 40}
    },
    results = {
      {type = "item", name = "beaconed-rocket-silo-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 40}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-rocket-silo-3"
  }
})