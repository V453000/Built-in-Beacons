beaconed_rocket_silo = util.table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])
beaconed_rocket_silo.name = "beaconed-rocket-silo"
beaconed_rocket_silo.icon = "__Built-in-Beacons__/graphics/icons/beaconed-rocket-silo.png"
beaconed_rocket_silo.minable.result = "beaconed-rocket-silo"
beaconed_rocket_silo.next_upgrade = "beaconed-rocket-silo-2"
beaconed_rocket_silo.crafting_speed = 4.4
beaconed_rocket_silo.energy_usage = "3150kW"
beaconed_rocket_silo.energy_source.drain = "9608kW"
beaconed_rocket_silo.lamp_energy_usage = "10kW"
beaconed_rocket_silo.active_energy_usage = "50400kW"
beaconed_rocket_silo.allowed_effects = {"productivity", "pollution"}
beaconed_rocket_silo.fast_replaceable_group = "rocket-silo"

beaconed_rocket_silo.module_specification.module_slots = data.raw["rocket-silo"]["rocket-silo"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_rocket_silo.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_rocket_silo.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_rocket_silo
})
data:extend({
  {
    type = "item",
    name = "beaconed-rocket-silo",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-rocket-silo.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "e[rocket-silo]",
    place_result = "beaconed-rocket-silo",
    stack_size = 1
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-rocket-silo",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-rocket-silo.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "i",
    ingredients =
    {
      {"rocket-silo", 1},
      {"beacon", 20},
      {"speed-module", 40}
    },
    results = {
      {type = "item", name = "beaconed-rocket-silo", amount = 1}
    },
    allow_as_intermediate = false
  }
})