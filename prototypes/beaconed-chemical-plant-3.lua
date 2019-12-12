beaconed_chemical_plant_3 = util.table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
beaconed_chemical_plant_3.name = "beaconed-chemical-plant-3"
beaconed_chemical_plant_3.icon = "__Built-in-Beacons__/graphics/icons/beaconed-chemical-plant-3.png"
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

if settings.startup["modded-entity-graphics"].value == "ON" then
  local merge_layers = function (dest, src)
    for key, tab in pairs(dest) do
      if (tab.layers) then
        for i, layer in pairs(src[key].layers) do
          table.insert(tab.layers, layer)
        end
      end
    end
  end
  merge_layers(beaconed_chemical_plant_3.animation, make_4way_animation_from_spritesheet(
    {
      layers =
      {
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-chemical-plant/beaconed-chemical-plant-overlay.png",
          width = 98,
          height = 120,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(0, -22),
          tint = {0.6*0.8, 0.75*0.8, 0, 0},
          hr_version =
          {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-chemical-plant/hr-beaconed-chemical-plant-overlay.png",
            width = 196,
            height = 238,
            frame_count = 24,
            line_length = 12,
            shift = util.by_pixel(0, -22.5),
            tint = {0.6*0.8, 0.75*0.8, 0, 0},
            scale = 0.5
          }
        }
      }
    }
  )
)
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  local set_animation_speed = function(anim)
    if anim then
      anim.animation_speed = beaconed_chemical_plant_3_animation_speed
      if (anim.hr_version) then
        anim.hr_version.animation_speed = beaconed_chemical_plant_3_animation_speed
      end
    end 
  end

  for i,layer in pairs(beaconed_chemical_plant_3.working_visualisations) do
    set_animation_speed(layer.animation)
    --set_animation_speed(layer.north_animation)
    --set_animation_speed(layer.south_animation)
    --set_animation_speed(layer.east_animation)
    --set_animation_speed(layer.west_animation)
  end
end

data:extend({
  beaconed_chemical_plant_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-chemical-plant-3",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-chemical-plant-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
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
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-chemical-plant-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons-3",
    order = "f",
    ingredients =
    {
      {"beaconed-chemical-plant-2", 1},
      {"speed-module-3", 14}
    },
    results = {
      {type = "item", name = "beaconed-chemical-plant-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 14, show_details_in_recipe_tooltip = false}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-chemical-plant-3"
  }
})
