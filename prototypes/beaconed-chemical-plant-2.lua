beaconed_chemical_plant_2 = util.table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
beaconed_chemical_plant_2.name = "beaconed-chemical-plant-2"
beaconed_chemical_plant_2.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-chemical-plant-2.png"
beaconed_chemical_plant_2.minable.result = "beaconed-chemical-plant-2"
beaconed_chemical_plant_2.next_upgrade = "beaconed-chemical-plant-3"
beaconed_chemical_plant_2.crafting_speed = 4.15
beaconed_chemical_plant_2.energy_source.emissions_per_second_per_watt = 4 / 210000
beaconed_chemical_plant_2.energy_source.drain = "3367kW"
beaconed_chemical_plant_2.energy_usage = "2100kW"
beaconed_chemical_plant_2.allowed_effects = {"productivity", "pollution"}
beaconed_chemical_plant_2.fast_replaceable_group = "chemical-plant"

beaconed_chemical_plant_2.module_specification.module_slots = data.raw["assembling-machine"]["chemical-plant"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_chemical_plant_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_chemical_plant_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

data:extend({
  beaconed_chemical_plant_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-chemical-plant-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-chemical-plant-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "e[chemical-plant]",
    place_result = "beaconed-chemical-plant-2",
    stack_size = 10
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-chemical-plant-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-chemical-plant-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "f",
    ingredients =
    {
      {"beaconed-chemical-plant", 1},
      {"speed-module-2", 14}
    },
    results = {
      {type = "item", name = "beaconed-chemical-plant-2", amount = 1},
      {type = "item", name = "speed-module", amount = 14}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-chemical-plant-2"
  }
})