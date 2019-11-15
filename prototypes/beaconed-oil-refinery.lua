beaconed_oil_refinery = util.table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
beaconed_oil_refinery.name = "beaconed-oil-refinery"
beaconed_oil_refinery.icon = "__Built-in-Beacons__/graphics/icons/beaconed-oil-refinery.png"
beaconed_oil_refinery.minable.result = "beaconed-oil-refinery"
beaconed_oil_refinery.next_upgrade = "beaconed-oil-refinery-2"
beaconed_oil_refinery.crafting_speed = 3.75
beaconed_oil_refinery.energy_source.emissions_per_second_per_watt = 6 / 420000
beaconed_oil_refinery.energy_source.drain = "4814kW"
beaconed_oil_refinery.energy_usage = "4284kW"
beaconed_oil_refinery.allowed_effects = {"productivity", "pollution"}
beaconed_oil_refinery.fast_replaceable_group = "oil-refinery"

beaconed_oil_refinery.module_specification.module_slots = data.raw["assembling-machine"]["oil-refinery"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_oil_refinery.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_oil_refinery.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
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
  merge_layers(beaconed_oil_refinery.animation, make_4way_animation_from_spritesheet(
    {
      layers =
      {
        {
          filename = "__Built-in-Beacons__/graphics/entity/beaconed-oil-refinery/beaconed-oil-refinery-overlay.png",
          width = 171,
          height = 171,
          frame_count = 1,
          shift = util.by_pixel(-0.5, -17.5),
          tint = {0.4,0.2,0,0},
          hr_version =
          {
            filename = "__Built-in-Beacons__/graphics/entity/beaconed-oil-refinery/hr-beaconed-oil-refinery-overlay.png",
            width = 341,
            height = 341,
            frame_count = 1,
            shift = util.by_pixel(-0.25, -17.25),
            tint = {0.4,0.2,0,0},
            scale = 0.5
          }
        }
      }
    }
  )
)
  --log(serpent.dump (beaconed_oil_refinery.animation.layers))
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  local set_animation_speed = function(anim)
    if anim then
      anim.animation_speed = beaconed_oil_refinery_1_animation_speed
      if (anim.hr_version) then
        anim.hr_version.animation_speed = beaconed_oil_refinery_1_animation_speed
      end
    end 
  end

  for i,layer in pairs(beaconed_oil_refinery.working_visualisations) do
    set_animation_speed(layer.animation)
  end
end

data:extend({
  beaconed_oil_refinery
})
data:extend({
  {
    type = "item",
    name = "beaconed-oil-refinery",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-oil-refinery.png",
    icon_size = 32,
    subgroup = "production-machine",
    order = "d[refinery]",
    place_result = "beaconed-oil-refinery",
    stack_size = 10
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-oil-refinery",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-oil-refinery.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "e",
    ingredients =
    {
      {"oil-refinery", 1},
      {"beacon", 10},
      {"speed-module", 20}
    },
    results = {
      {type = "item", name = "beaconed-oil-refinery", amount = 1}
    },
    allow_as_intermediate = false
  }
})