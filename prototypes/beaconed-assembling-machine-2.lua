beaconed_assembling_machine_2 = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
beaconed_assembling_machine_2.name = "beaconed-assembling-machine-2"
beaconed_assembling_machine_2.icon = "__Absorbed-Beacons__/graphics/icons/beaconed-assembling-machine-2.png"
beaconed_assembling_machine_2.minable.result = "beaconed-assembling-machine-2"
beaconed_assembling_machine_2.next_upgrade = "beaconed-assembling-machine-3"
beaconed_assembling_machine_2.crafting_speed = 5
beaconed_assembling_machine_2.energy_source.emissions_per_second_per_watt = 2 / 375000
beaconed_assembling_machine_2.energy_source.drain = "3367kW"
beaconed_assembling_machine_2.energy_usage = "3975kW"
beaconed_assembling_machine_2.allowed_effects = {"productivity", "pollution"}

beaconed_assembling_machine_2.module_specification.module_slots = data.raw["assembling-machine"]["assembling-machine-3"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_assembling_machine_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_assembling_machine_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_assembling_machine_2.animation.layers, 
  {
    filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/beaconed-assembling-machine-2-overlay.png",
    width = 107,
    height = 109,
    frame_count = 1,
    repeat_count = 32,
    shift = util.by_pixel(0, 4),
    animation_speed = beaconed_assembling_machine_2_animation_speed,
    hr_version = {
      filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-2/hr-beaconed-assembling-machine-2-overlay.png",
      priority = "high",
      width = 214,
      height = 218,
      frame_count = 1,
      repeat_count = 32,
      shift = util.by_pixel(0, 4),
      animation_speed = beaconed_assembling_machine_2_animation_speed,
      scale = 0.5
    }
  })
  table.insert(beaconed_assembling_machine_2.animation.layers, 
  {
    filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-3/assembling-machine-3-mask.png",
    width = 78,
    height = 96,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(-1, -11),
    tint = {0.4*0.75 ,0.35*0.75 ,0,0},
    blend_mode = "additive",
    animation_speed = beaconed_assembling_machine_2_animation_speed,
    hr_version = {
      filename = "__Absorbed-Beacons__/graphics/entity/beaconed-assembling-machine-3/hr-assembling-machine-3-mask.png",
      priority = "high",
      width = 156,
      height = 192,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(-0.5, -11),
      tint = {0.4*0.75 ,0.35*0.75 ,0,0},
      blend_mode = "additive",
      animation_speed = beaconed_assembling_machine_2_animation_speed,
      scale = 0.5
    }
  })
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_assembling_machine_2.animation.layers) do
    layer.animation_speed = beaconed_assembling_machine_2_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_assembling_machine_2_animation_speed
    end
  end
end

data:extend({
  beaconed_assembling_machine_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-assembling-machine-2",
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-assembling-machine-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "c[assembling-machine-3]",
    place_result = "beaconed-assembling-machine-2",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-assembling-machine-2",
    enabled = false,
    icon = "__Absorbed-Beacons__/graphics/icons/beaconed-assembling-machine-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    order = "c",
    ingredients =
    {
      {"beaconed-assembling-machine", 1},
      {"speed-module-2", 14}
    },
    results = {
      {type = "item", name = "beaconed-assembling-machine-2", amount = 1},
      {type = "item", name = "speed-module", amount = 14}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-assembling-machine-2"
  }
})