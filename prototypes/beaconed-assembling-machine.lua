beaconed_assembling_machine = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
beaconed_assembling_machine.name = "beaconed-assembling-machine"
beaconed_assembling_machine.icon = "__Built-in-Beacons__/graphics/icons/beaconed-assembling-machine.png"
beaconed_assembling_machine.minable.result = "beaconed-assembling-machine"
beaconed_assembling_machine.next_upgrade = "beaconed-assembling-machine-2"
beaconed_assembling_machine.crafting_speed = 3.5
beaconed_assembling_machine.energy_source.emissions_per_second_per_watt = 2 / 375000
beaconed_assembling_machine.energy_source.drain = "3367kW"
beaconed_assembling_machine.energy_usage = "3225kW"
beaconed_assembling_machine.allowed_effects = {"productivity", "pollution"}

beaconed_assembling_machine.module_specification.module_slots = data.raw["assembling-machine"]["assembling-machine-3"].module_specification.module_slots * 2
if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_assembling_machine.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_assembling_machine.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_assembling_machine.animation.layers, 
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-1/beaconed-assembling-machine-1-overlay.png",
      width = 107,
      height = 109,
      frame_count = 1,
      repeat_count = 32,
      shift = util.by_pixel(0, 4),
      animation_speed = beaconed_assembling_machine_1_animation_speed,
      hr_version = {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-1/hr-beaconed-assembling-machine-1-overlay.png",
        priority = "high",
        width = 214,
        height = 218,
        frame_count = 1,
        repeat_count = 32,
        shift = util.by_pixel(0, 4),
        animation_speed = beaconed_assembling_machine_1_animation_speed,
        scale = 0.5
      }
    })
  table.insert(beaconed_assembling_machine.animation.layers, 
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-3/assembling-machine-3-mask.png",
      width = 78,
      height = 96,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(-1, -11),
      tint = {0.4*0.6 ,0.2*0.6 ,0,0},
      blend_mode = "additive",
      animation_speed = beaconed_assembling_machine_1_animation_speed,
      hr_version = {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-assembling-machine-3/hr-assembling-machine-3-mask.png",
        priority = "high",
        width = 156,
        height = 192,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(-0.5, -11),
        tint = {0.4*0.6 ,0.2*0.6 ,0,0},
        blend_mode = "additive",
        animation_speed = beaconed_assembling_machine_1_animation_speed,
        scale = 0.5
      }
    })
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_assembling_machine.animation.layers) do
    layer.animation_speed = beaconed_assembling_machine_1_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_assembling_machine_1_animation_speed
    end
  end
end

data:extend({
  beaconed_assembling_machine
})
data:extend({
  {
    type = "item",
    name = "beaconed-assembling-machine",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-assembling-machine.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "c[assembling-machine-3]",
    place_result = "beaconed-assembling-machine",
    stack_size = 50
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-assembling-machine",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-assembling-machine.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "c",
    ingredients =
    {
      {"assembling-machine-3", 1},
      {"beacon", 7},
      {"speed-module", 14}
    },
    results = {
      {type = "item", name = "beaconed-assembling-machine", amount = 1},
    },
    allow_as_intermediate = false
  }
})