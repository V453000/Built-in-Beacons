beaconed_chemical_plant = util.table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
beaconed_chemical_plant.name = "beaconed-chemical-plant"
beaconed_chemical_plant.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-chemical-plant.png"
beaconed_chemical_plant.minable.result = "beaconed-chemical-plant"
beaconed_chemical_plant.next_upgrade = "beaconed-chemical-plant-2"
beaconed_chemical_plant.crafting_speed = 2.95
beaconed_chemical_plant.energy_source.emissions_per_second_per_watt = 4 / 210000
beaconed_chemical_plant.energy_source.drain = "3367kW"
beaconed_chemical_plant.energy_usage = "1722kW"
beaconed_chemical_plant.allowed_effects = {"productivity", "pollution"}
beaconed_chemical_plant.fast_replaceable_group = "chemical-plant"

beaconed_chemical_plant.module_specification.module_slots = data.raw["assembling-machine"]["chemical-plant"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_chemical_plant.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_chemical_plant.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_chemical_plant
})
data:extend({
  {
    type = "item",
    name = "beaconed-chemical-plant",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-chemical-plant.png",
    icon_size = 32,
    subgroup = "absorbed-beacons",
    order = "e[chemical-plant]",
    place_result = "beaconed-chemical-plant",
    stack_size = 10
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-chemical-plant",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-chemical-plant.png",
    icon_size = 32,
    subgroup = "absorbed-beacons",
    order = "f",
    ingredients =
    {
      {"chemical-plant", 1},
      {"beacon", 7},
      {"speed-module", 14}
    },
    results = {
      {type = "item", name = "beaconed-chemical-plant", amount = 1}
    },
    allow_as_intermediate = false
  }
})