beaconed_lab = util.table.deepcopy(data.raw["lab"]["lab"])
beaconed_lab.name = "beaconed-lab"
beaconed_lab.icon = "__Built-in-Beacons__/graphics/icons/beaconed-lab.png"
beaconed_lab.minable.result = "beaconed-lab"
beaconed_lab.next_upgrade = "beaconed-lab-2"
beaconed_lab.researching_speed = 3.1
beaconed_lab.energy_source.drain = "3360kW"
beaconed_lab.energy_usage = "468kW"
beaconed_lab.allowed_effects = {"productivity", "pollution"}
beaconed_lab.fast_replaceable_group = "lab"

beaconed_lab.module_specification.module_slots = data.raw["lab"]["lab"].module_specification.module_slots * 2

beaconed_lab_tint = {0.4*0.5, 0.2*0.5, 0, 0}

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_lab.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_lab.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  beaconed_lab.on_animation.layers[1] = 
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-lab/lab-purple.png",
      width = 98,
      height = 87,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 1.5),
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-lab/hr-lab-purple.png",
        width = 194,
        height = 174,
        frame_count = 33,
        line_length = 11,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 1.5),
        scale = 0.5
      }
    }

  table.insert(beaconed_lab.on_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-lab/beaconed-lab-overlay.png",
      width = 288,
      height = 288,
      frame_count = 1,
      line_length = 1,
      repeat_count = 33,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 8),
      tint = beaconed_lab_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-lab/hr-beaconed-lab-overlay.png",
        width = 576,
        height = 576,
        frame_count = 1,
        line_length = 1,
        repeat_count = 33,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 8),
        tint = beaconed_lab_tint,
        scale = 0.5
      }
    }
  )
  table.insert(beaconed_lab.off_animation.layers,
    {
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-lab/beaconed-lab-overlay.png",
      width = 288,
      height = 288,
      frame_count = 1,
      line_length = 1,
      repeat_count = 1,
      animation_speed = 1 / 3,
      shift = util.by_pixel(0, 8),
      tint = beaconed_lab_tint,
      hr_version =
      {
        filename = "__Built-in-Beacons__/graphics/entity/beaconed-lab/hr-beaconed-lab-overlay.png",
        width = 576,
        height = 576,
        frame_count = 1,
        line_length = 1,
        repeat_count = 1,
        animation_speed = 1 / 3,
        shift = util.by_pixel(0, 8),
        tint = beaconed_lab_tint,
        scale = 0.5
      }
    }
  )
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_lab.on_animation.layers) do
    layer.animation_speed = beaconed_lab_1_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_lab_1_animation_speed
    end
  end
end

data:extend({
  beaconed_lab
})
data:extend({
  {
    type = "item",
    name = "beaconed-lab",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-lab.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "g[lab]",
    place_result = "beaconed-lab",
    stack_size = 10
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-lab",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-lab.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "h",
    ingredients =
    {
      {"lab", 1},
      {"beacon", 7},
      {"speed-module", 14}
    },
    results = {
      {type = "item", name = "beaconed-lab", amount = 1}
    },
    allow_as_intermediate = false
  }
})