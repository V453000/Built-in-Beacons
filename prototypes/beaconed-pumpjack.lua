beaconed_pumpjack = util.table.deepcopy(data.raw["mining-drill"]["pumpjack"])
beaconed_pumpjack.name = "beaconed-pumpjack"
beaconed_pumpjack.icon = "__Built-in-Beacons__/graphics/icons/beaconed-pumpjack.png"
beaconed_pumpjack.minable.result = "beaconed-pumpjack"
beaconed_pumpjack.next_upgrade = "beaconed-pumpjack-2"
beaconed_pumpjack.mining_speed = 2.2
beaconed_pumpjack.energy_source.emissions_per_second_per_watt = 10 / 90000
beaconed_pumpjack.energy_source.drain = "480kW"
beaconed_pumpjack.energy_usage = "360kW"
beaconed_pumpjack.allowed_effects = {"productivity", "pollution"}
beaconed_pumpjack.fast_replaceable_group = "pumpjack"

beaconed_pumpjack.module_specification.module_slots = 1

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_pumpjack.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_pumpjack.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_pumpjack.animations.north.layers,
  {
    priority = "high",
    filename = "__Built-in-Beacons__/graphics/entity/beaconed-pumpjack/pumpjack-horsehead-mask.png",
    line_length = 8,
    width = 104,
    height = 102,
    frame_count = 40,
    shift = util.by_pixel(-4, -24),
    --blend_mode = "additive",
    tint = {0.4*0.9, 0.2*0.9, 0, 0},
    animation_speed = beaconed_pumpjack_1_animation_speed,
    hr_version =
    {
      priority = "high",
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-pumpjack/hr-pumpjack-horsehead-mask.png",
      animation_speed = beaconed_pumpjack_1_animation_speed,
      scale = 0.5,
      line_length = 8,
      width = 206,
      height = 202,
      frame_count = 40,
      shift = util.by_pixel(-4, -24),
      tint = {0.4*0.9, 0.2*0.9, 0, 0},
    }
  })
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_pumpjack.animations.north.layers) do
    layer.animation_speed = beaconed_pumpjack_1_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_pumpjack_1_animation_speed
    end
  end
end

data:extend({
  beaconed_pumpjack
})
data:extend({
  {
    type = "item",
    name = "beaconed-pumpjack",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-pumpjack.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "b[fluids]-b[pumpjack]",
    place_result = "beaconed-pumpjack",
    stack_size = 20
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-pumpjack",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-pumpjack.png",
    icon_size = 32,
    subgroup = "built-in-beacons",
    order = "k",
    ingredients =
    {
      {"pumpjack", 1},
      {"beacon", 1},
      {"speed-module", 2}
    },
    results = {
      {type = "item", name = "beaconed-pumpjack", amount = 1}
    },
    allow_as_intermediate = false
  }
})