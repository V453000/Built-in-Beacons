animation_multiplier = 2
beaconed_electric_furnace_1_animation_speed = 0.32258*animation_multiplier*0.5*0.5
beaconed_electric_furnace_2_animation_speed = 0.23255*animation_multiplier*0.5*0.5
beaconed_electric_furnace_3_animation_speed = 0.14922*animation_multiplier*0.5*0.5
beaconed_assembling_machine_1_animation_speed = 0.37371*animation_multiplier
beaconed_assembling_machine_2_animation_speed = 0.25*animation_multiplier
beaconed_assembling_machine_3_animation_speed = 0.15625*animation_multiplier
beaconed_lab_1_animation_speed = 0.10752*animation_multiplier
beaconed_lab_2_animation_speed = 0.07752*animation_multiplier
beaconed_lab_3_animation_speed = 0.04975*animation_multiplier
data:extend({
  {
    type = "technology",
    name = "fullspeed-productivity-module",
    icon_size = 128,
    icon = "__Absorbed-Beacons__/graphics/technology/fullspeed-productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fullspeed-productivity-module"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-assembling-machine"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-electric-furnace"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-lab"
      },
    },
    prerequisites = {"automation-3", "effect-transmission"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-f-a"
  },
  {
    type = "technology",
    name = "fullspeed-productivity-module-2",
    icon_size = 128,
    icon = "__Absorbed-Beacons__/graphics/technology/fullspeed-productivity-module-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fullspeed-productivity-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-assembling-machine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-electric-furnace-2"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-lab-2"
      },
    },
    prerequisites = {"fullspeed-productivity-module", "speed-module-2"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-f-b"
  },
  {
    type = "technology",
    name = "fullspeed-productivity-module-3",
    icon_size = 128,
    icon = "__Absorbed-Beacons__/graphics/technology/fullspeed-productivity-module-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fullspeed-productivity-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-assembling-machine-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-electric-furnace-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-lab-3"
      }
    },
    prerequisites = {"fullspeed-productivity-module-2", "speed-module-3"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-f-c"
  },
})

data:extend({
  {
    type = "item-subgroup",
    name = "absorbed-beacons",
    group = "production",
    order = "u"
  },
  {
    type = "item-subgroup",
    name = "absorbed-beacons-2",
    group = "production",
    order = "v"
  },
  {
    type = "item-subgroup",
    name = "absorbed-beacons-3",
    group = "production",
    order = "w"
  }
})
require ("prototypes.beaconedassemblerpipes")
require ("prototypes.beaconed-assembling-machine")
require ("prototypes.beaconed-assembling-machine-2")
require ("prototypes.beaconed-assembling-machine-3")
require ("prototypes.beaconed-electric-furnace")
require ("prototypes.beaconed-electric-furnace-2")
require ("prototypes.beaconed-electric-furnace-3")
require ("prototypes.beaconed-lab")
require ("prototypes.beaconed-lab-2")
require ("prototypes.beaconed-lab-3")
require ("prototypes.fullspeed-productivity-module")