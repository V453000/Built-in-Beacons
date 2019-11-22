beaconed_pumpjack_2 = util.table.deepcopy(data.raw["mining-drill"]["pumpjack"])
beaconed_pumpjack_2.name = "beaconed-pumpjack-2"
beaconed_pumpjack_2.icon = "__Built-in-Beacons__/graphics/icons/beaconed-pumpjack-2.png"
beaconed_pumpjack_2.minable.result = "beaconed-pumpjack-2"
beaconed_pumpjack_2.next_upgrade = "beaconed-pumpjack-3"
beaconed_pumpjack_2.mining_speed = 2.8
beaconed_pumpjack_2.energy_source.emissions_per_second_per_watt = 10 / 90000
beaconed_pumpjack_2.energy_source.drain = "480kW"
beaconed_pumpjack_2.energy_usage = "414kW"
beaconed_pumpjack_2.allowed_effects = {"productivity", "pollution"}
beaconed_pumpjack_2.fast_replaceable_group = "pumpjack"

beaconed_pumpjack_2.module_specification.module_slots = 2

if settings.startup["show-module-slot-row-length"].value > 0 then
  beaconed_pumpjack_2.module_specification.module_info_max_icons_per_row = settings.startup["show-module-slot-row-length"].value
end
if settings.startup["show-module-slot-rows"].value > 0 then
  beaconed_pumpjack_2.module_specification.module_info_max_icon_rows = settings.startup["show-module-slot-rows"].value
end

if settings.startup["modded-entity-graphics"].value == "ON" then
  table.insert(beaconed_pumpjack_2.animations.north.layers,
  {
    priority = "high",
    filename = "__Built-in-Beacons__/graphics/entity/beaconed-pumpjack/pumpjack-horsehead-mask.png",
    line_length = 8,
    width = 104,
    height = 102,
    frame_count = 40,
    shift = util.by_pixel(-4, -24),
    --blend_mode = "additive",
    tint = {0.4*0.8, 0.4*0.8, 0, 0},
    animation_speed = beaconed_pumpjack_2_animation_speed,
    hr_version =
    {
      priority = "high",
      filename = "__Built-in-Beacons__/graphics/entity/beaconed-pumpjack/hr-pumpjack-horsehead-mask.png",
      animation_speed = beaconed_pumpjack_2_animation_speed,
      scale = 0.5,
      line_length = 8,
      width = 206,
      height = 202,
      frame_count = 40,
      shift = util.by_pixel(-4, -24),
      tint = {0.4*0.8, 0.4*0.8, 0, 0},
    }
  })
end

if settings.startup["modded-entity-graphics"].value ~= "OFF" then
  for i,layer in pairs(beaconed_pumpjack_2.animations.north.layers) do
    layer.animation_speed = beaconed_pumpjack_2_animation_speed
    if (layer.hr_version) then
      layer.hr_version.animation_speed = beaconed_pumpjack_2_animation_speed
    end
  end
end


data:extend({
  beaconed_pumpjack_2
})
data:extend({
  {
    type = "item",
    name = "beaconed-pumpjack-2",
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-pumpjack-2.png",
    icon_size = 32,
    subgroup = "extraction-machine",
    order = "b[fluids]-b[pumpjack]",
    place_result = "beaconed-pumpjack-2",
    stack_size = 20
  },
})
data:extend({
  {
    type = "recipe",
    name = "beaconed-pumpjack-2",
    enabled = false,
    icon = "__Built-in-Beacons__/graphics/icons/beaconed-pumpjack-2.png",
    icon_size = 32,
    subgroup = "built-in-beacons-2",
    order = "k",
    ingredients =
    {
      {"beaconed-pumpjack", 1},
      {"speed-module-2", 2}
    },
    results = {
      {type = "item", name = "beaconed-pumpjack-2", amount = 1},
      {type = "item", name = "speed-module", amount = 2, show_details_in_recipe_tooltip = false}
    },
    allow_as_intermediate = false,
    main_product = "beaconed-pumpjack-2"
  }
})