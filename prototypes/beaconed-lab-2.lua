beaconed_lab_2 = util.table.deepcopy(data.raw["lab"]["lab"])
beaconed_lab_2.name = "beaconed-lab-2"
beaconed_lab_2.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-lab-2.png"
beaconed_lab_2.minable.result = "beaconed-lab-2"
beaconed_lab_2.next_upgrade = "beaconed-lab-3"
beaconed_lab_2.researching_speed = 4.3
beaconed_lab_2.energy_source.drain = "3360kW"
beaconed_lab_2.energy_usage = "564kW"
beaconed_lab_2.allowed_effects = {"productivity", "pollution"}
beaconed_lab_2.fast_replaceable_group = "lab"

beaconed_lab_2.module_specification.module_slots = data.raw["lab"]["lab"].module_specification.module_slots * 2

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_lab_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_lab_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  beaconed_lab_2.on_animation.layers[1] = 
    {
      filename = "__Absorbed-Beacons__/graphics/entity/beaconed-lab/lab-yellow.png",
      width = 98,
      height = 87,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 1.5),
      hr_version =
      {
        filename = "__Absorbed-Beacons__/graphics/entity/beaconed-lab/hr-lab-yellow.png",
        width = 194,
        height = 174,
        frame_count = 33,
        line_length = 11,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 1.5),
        scale = 0.5
      }
    }
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_lab_2.on_animation.layers) do
    layer.animation_speed = beaconed_lab_2_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_lab_2_animation_speed
    end
  end
end

data:extend({
  beaconed_lab_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-lab-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-lab-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "g[lab]",
    place_result = "beaconed-lab-2",
    stack_size = 10
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-lab-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-lab-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "h",
    ingredients =
    {
      {"beaconed-lab", 1},
      {"speed-module-2", 14}
    },
    results = {
      {type = "item", name = "beaconed-lab-2", amount = 1},
      {type = "item", name = "speed-module", amount = 14}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-lab-2"
  }
})