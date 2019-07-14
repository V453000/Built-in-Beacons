beaconed_oil_refinery = util.table.deepcopy(data.raw["assembling-machine"]["oil-refinery"])
beaconed_oil_refinery.name = "beaconed-oil-refinery"
beaconed_oil_refinery.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-oil-refinery.png"
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

if settings.startup["modded-entity-graphics"].value == true then
  beaconed_oil_refinery.animation = make_4way_animation_from_spritesheet({ layers =
  {    
    {
      filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
      width = 337,
      height = 255,
      frame_count = 1,
      shift = {2.515625, 0.484375},
      hr_version =
      {
        filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
        width = 386,
        height = 430,
        frame_count = 1,
        shift = util.by_pixel(0, -7.5),
        scale = 0.5
      }
    },
    {
      filename = "__Absorbed-Beacons__/graphics/entity/beaconed-oil-refinery/beaconed-oil-refinery-overlay.png",
      width = 512,
      height = 512,
      frame_count = 1,
      shift = util.by_pixel(0, 0),
      tint = {0.4,0.2,0,0},
      hr_version =
      {
        filename = "__Absorbed-Beacons__/graphics/entity/beaconed-oil-refinery/hr-beaconed-oil-refinery-overlay.png",
        width = 1024,
        height = 1024,
        frame_count = 1,
        shift = util.by_pixel(0, 0),
        tint = {0.4,0.2,0,0},
        scale = 0.5
      }
    },
    {
      filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
      width = 337,
      height = 213,
      frame_count = 1,
      shift = util.by_pixel(82.5, 26.5),
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
        width = 674,
        height = 426,
        frame_count = 1,
        shift = util.by_pixel(82.5, 26.5),
        draw_as_shadow = true,
        scale = 0.5
      }
    }
  }})
end

data:extend({
  beaconed_oil_refinery
})
data:extend({
  {
    type = "item",
    name = "beaconed-oil-refinery",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-oil-refinery.png",
    icon_size = 32,
    subgroup = "absorbed-beacons",
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
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-oil-refinery.png",
    icon_size = 32,
    subgroup = "absorbed-beacons",
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