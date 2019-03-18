animation_multiplier = 2
beaconed_electric_furnace_1_animation_speed = 0.32258*animation_multiplier*0.5*0.5*0.8
beaconed_electric_furnace_2_animation_speed = 0.23255*animation_multiplier*0.5*0.5*0.8
beaconed_electric_furnace_3_animation_speed = 0.14922*animation_multiplier*0.5*0.5*0.8
beaconed_assembling_machine_1_animation_speed = 0.37371*animation_multiplier
beaconed_assembling_machine_2_animation_speed = 0.25*animation_multiplier
beaconed_assembling_machine_3_animation_speed = 0.15625*animation_multiplier
beaconed_chemical_plant_1_animation_speed = 0.16949*animation_multiplier
beaconed_chemical_plant_2_animation_speed = 0.12048*animation_multiplier
beaconed_chemical_plant_3_animation_speed = 0.07633*animation_multiplier
beaconed_oil_refinery_1_animation_speed = 0.2*animation_multiplier
beaconed_oil_refinery_2_animation_speed = 0.14018*animation_multiplier
beaconed_oil_refinery_3_animation_speed = 0.08771*animation_multiplier
beaconed_lab_1_animation_speed = 0.10752*animation_multiplier
beaconed_lab_2_animation_speed = 0.07752*animation_multiplier
beaconed_lab_3_animation_speed = 0.04975*animation_multiplier
beaconed_centrifuge_1_animation_speed = 0.32258*animation_multiplier
beaconed_centrifuge_2_animation_speed = 0.23255*animation_multiplier
beaconed_centrifuge_3_animation_speed = 0.04975*animation_multiplier
beaconed_electric_drill_1_animation_speed = 0.37037*animation_multiplier
beaconed_electric_drill_2_animation_speed = 0.28571*animation_multiplier
beaconed_electric_drill_3_animation_speed = 0.19607*animation_multiplier
beaconed_pumpjack_1_animation_speed = 0.33333*animation_multiplier
beaconed_pumpjack_2_animation_speed = 0.28571*animation_multiplier
beaconed_pumpjack_3_animation_speed = 0.18518*animation_multiplier
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
        recipe = "beaconed-chemical-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-oil-refinery"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-lab"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-rocket-silo"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-electric-mining-drill"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-pumpjack"
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
        recipe = "beaconed-chemical-plant-2"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-oil-refinery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-centrifuge-2"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-lab-2"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-rocket-silo-2"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-electric-mining-drill-2"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-pumpjack-2"
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
        recipe = "maxspeed-beaconed-assembling-machine-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-electric-furnace-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-chemical-plant-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-oil-refinery-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-centrifuge-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-lab-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-rocket-silo-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-electric-mining-drill-3"
      },
      {
        type = "unlock-recipe",
        recipe = "beaconed-pumpjack-3"
      },
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
  },
  {
    type = "item-subgroup",
    name = "absorbed-beacons-4",
    group = "production",
    order = "x"
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
require ("prototypes.beaconed-chemical-plant")
require ("prototypes.beaconed-chemical-plant-2")
require ("prototypes.beaconed-chemical-plant-3")
require ("prototypes.beaconed-oil-refinery")
require ("prototypes.beaconed-oil-refinery-2")
require ("prototypes.beaconed-oil-refinery-3")
require ("prototypes.beaconed-centrifuge")
require ("prototypes.beaconed-centrifuge-2")
require ("prototypes.beaconed-centrifuge-3")
require ("prototypes.beaconed-rocket-silo")
require ("prototypes.beaconed-rocket-silo-2")
require ("prototypes.beaconed-rocket-silo-3")
require ("prototypes.beaconed-electric-mining-drill")
require ("prototypes.beaconed-electric-mining-drill-2")
require ("prototypes.beaconed-electric-mining-drill-3")
require ("prototypes.beaconed-pumpjack")
require ("prototypes.beaconed-pumpjack-2")
require ("prototypes.beaconed-pumpjack-3")
require ("prototypes.fullspeed-productivity-module")
require ("prototypes.maxspeed-beaconed-assembling-machine-3")

data.raw["assembling-machine"]["assembling-machine-3"].fast_replaceable_group = "assembling-machine"
data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade =  "beaconed-assembling-machine"
data.raw["assembling-machine"]["centrifuge"].fast_replaceable_group = "centrifuge"
data.raw["assembling-machine"]["centrifuge"].next_upgrade =  "beaconed-centrifuge"
data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
data.raw["assembling-machine"]["chemical-plant"].next_upgrade =  "beaconed-chemical-plant"
data.raw["furnace"]["electric-furnace"].fast_replaceable_group = "furnace"
data.raw["furnace"]["electric-furnace"].next_upgrade =  "beaconed-electric-furnace"
data.raw["mining-drill"]["electric-mining-drill"].fast_replaceable_group = "mining-drill"
data.raw["mining-drill"]["electric-mining-drill"].next_upgrade =  "beaconed-electric-mining-drill"
data.raw["lab"]["lab"].fast_replaceable_group = "lab"
data.raw["lab"]["lab"].next_upgrade =  "beaconed-lab"
data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"
data.raw["assembling-machine"]["oil-refinery"].next_upgrade =  "beaconed-oil-refinery"
data.raw["mining-drill"]["pumpjack"].fast_replaceable_group = "pumpjack"
data.raw["mining-drill"]["pumpjack"].next_upgrade =  "beaconed-pumpjack"
data.raw["rocket-silo"]["rocket-silo"].fast_replaceable_group = "rocket-silo"
data.raw["rocket-silo"]["rocket-silo"].next_upgrade =  "beaconed-rocket-silo"