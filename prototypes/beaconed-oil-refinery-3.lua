beaconed_oil_refinery_3 = util.table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
beaconed_oil_refinery_3.name = "beaconed-oil-refinery-3"
beaconed_oil_refinery_3.icon = "__Built-in-Beacons__/graphics/icons/beaconed-oil-refinery-3.png"
beaconed_oil_refinery_3.minable.result = "beaconed-oil-refinery-3"
beaconed_oil_refinery_3.crafting_speed = 8.55
beaconed_oil_refinery_3.energy_source.emissions_per_second_per_watt = 6 / 420000
beaconed_oil_refinery_3.energy_source.drain = "4814kW"
beaconed_oil_refinery_3.energy_usage = "6132kW"
beaconed_oil_refinery_3.allowed_effects = {"productivity", "pollution"}
beaconed_oil_refinery_3.fast_replaceable_group = "oil-refinery"

beaconed_oil_refinery_3.module_specification.module_slots = data.raw["assembling-machine"]["oil-refinery"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_oil_refinery_3.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_oil_refinery_3.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
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
  merge_layers(beaconed_oil_refinery_3.animation, make_4way_animation_from_spritesheet(
    {
      layers =
      {
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-oil-refinery/beaconed-oil-refinery-overlay.png",
          width = 171,
          height = 171,
          frame_count = 1,
          shift = util.by_pixel(-0.5, -17.5),
          tint = {0.48,0.6,0,0},
          hr_version =
          {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-oil-refinery/hr-beaconed-oil-refinery-overlay.png",
            width = 341,
            height = 341,
            frame_count = 1,
            shift = util.by_pixel(-0.25, -17.25),
            tint = {0.48,0.6,0,0},
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
      anim.animation_speed = beaconed_oil_refinery_3_animation_speed
      if (anim.hr_version) then
        anim.hr_version.animation_speed = beaconed_oil_refinery_3_animation_speed
      end
    end 
  end

  for i,layer in pairs(beaconed_oil_refinery_3.working_visualisations) do
    set_animation_speed(layer.animation)
  end
end

data:extend({
  beaconed_oil_refinery_3
})
data:extend({
  {
    type = "item",
    name = "beaconed-oil-refinery-3",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-oil-refinery-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "d[refinery]",
    place_result = "beaconed-oil-refinery-3",
    stack_size = 10
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-oil-refinery-3",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-oil-refinery-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "built-in-beacons-3",
    order = "e",
    ingredients =
    {
      {"beaconed-oil-refinery-2", 1},
      {"speed-module-3", 20}
    },
    results = {
      {type = "item", name = "beaconed-oil-refinery-3", amount = 1},
      {type = "item", name = "speed-module-2", amount = 20, show_details_in_recipe_tooltip = false}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-oil-refinery-3"
  }
})