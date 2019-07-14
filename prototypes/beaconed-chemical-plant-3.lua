beaconed_chemical_plant_3 = util.table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
beaconed_chemical_plant_3.name = "beaconed-chemical-plant-3"
beaconed_chemical_plant_3.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-chemical-plant-3.png"
beaconed_chemical_plant_3.minable.result = "beaconed-chemical-plant-3"
beaconed_chemical_plant_3.crafting_speed = 6.55
beaconed_chemical_plant_3.energy_source.emissions_per_second_per_watt = 4 / 210000
beaconed_chemical_plant_3.energy_source.drain = "3367kW"
beaconed_chemical_plant_3.energy_usage = "2478kW"
beaconed_chemical_plant_3.allowed_effects = {"productivity", "pollution"}
beaconed_chemical_plant_3.fast_replaceable_group = "chemical-plant"

beaconed_chemical_plant_3.module_specification.module_slots = data.raw["assembling-machine"]["chemical-plant"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_chemical_plant_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_chemical_plant_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_chemical_plant_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-chemical-plant-3",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-chemical-plant-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "e[chemical-plant]",
    place_result = "beaconed-chemical-plant-3",
    stack_size = 10
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-chemical-plant-3",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-chemical-plant-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    order = "f",
    ingredients =
    {
      {"beaconed-chemical-plant-2", 1},
      {"speed-module-3", 14}
    },
    results = {
      {type = "item", name = "beaconed-chemical-plant-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 14}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-chemical-plant-3"
  }
})
