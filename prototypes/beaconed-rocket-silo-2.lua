beaconed_rocket_silo_2 = util.table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
beaconed_rocket_silo_2.name = "beaconed-rocket-silo-2"
beaconed_rocket_silo_2.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-rocket-silo-2.png"
beaconed_rocket_silo_2.minable.result = "beaconed-rocket-silo-2"
beaconed_rocket_silo_2.next_upgrade = "beaconed-rocket-silo-3"
beaconed_rocket_silo_2.crafting_speed = 6.4
beaconed_rocket_silo_2.energy_usage = "3850kW"
beaconed_rocket_silo_2.idle_energy_usage = "9608kW"
beaconed_rocket_silo_2.lamp_energy_usage = "10kW"
beaconed_rocket_silo_2.active_energy_usage = "61600kW"
beaconed_rocket_silo_2.allowed_effects = {"productivity", "pollution"}
beaconed_rocket_silo_2.fast_replaceable_group = "rocket-silo"

beaconed_rocket_silo_2.module_specification.module_slots = data.raw["rocket-silo"]["rocket-silo"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_rocket_silo_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_rocket_silo_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_rocket_silo_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-rocket-silo-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-rocket-silo-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "e[rocket-silo]",
    place_result = "beaconed-rocket-silo-2",
    stack_size = 1
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-rocket-silo-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-rocket-silo-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "i",
    ingredients =
    {
      {"beaconed-rocket-silo", 1},
      {"speed-module-2", 40}
    },
    results = {
      {type = "item", name = "beaconed-rocket-silo-2", amount = 1},
      {type = "item", name = "speed-module", amount = 40}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-rocket-silo-2"
  }
})