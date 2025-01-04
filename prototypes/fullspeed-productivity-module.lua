-- R E C I P E S
data:extend({
  {
    type = "recipe",
    name = "fullspeed-productivity-module",
    subgroup = "built-in-beacons",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electronic-circuit", amount = 5},
      {type = "item", name = "advanced-circuit", amount = 5}
    },
    energy_required = 15,
    results =
    {
      {type = "item", name = "fullspeed-productivity-module", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "fullspeed-productivity-module-2",
    subgroup = "built-in-beacons-2",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "fullspeed-productivity-module", amount = 8},
      {type = "item", name = "advanced-circuit", amount = 5},
      {type = "item", name = "processing-unit", amount = 5}
    },
    energy_required = 30,
    results =
    {
      {type = "item", name = "fullspeed-productivity-module-2", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "fullspeed-productivity-module-3",
    subgroup = "built-in-beacons-3",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "fullspeed-productivity-module-2", amount = 10},
      {type = "item", name = "advanced-circuit", amount = 5},
      {type = "item", name = "processing-unit", amount =5}
    },
    energy_required = 60,
    results =
    {
      {type = "item", name = "fullspeed-productivity-module-3", amount = 2}
    }
  },
})
-- I T E M S
data:extend({
  {
    type = "module",
    name = "fullspeed-productivity-module",
    localised_description = {"item-description.fullspeed-productivity-module"},
    icon = "__Built-in-Beacons__/graphics/icons/fullspeed-productivity-module.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module",
    category = "productivity",
    tier = 1,
    order = "a",
    stack_size = 100,
    effect =
    {
      productivity = 0.02,
      pollution = 0.03
    }
  },
  {
    type = "module",
    name = "fullspeed-productivity-module-2",
    localised_description = {"item-description.fullspeed-productivity-module-2"},
    icon = "__Built-in-Beacons__/graphics/icons/fullspeed-productivity-module-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module",
    category = "productivity",
    tier = 2,
    order = "a",
    stack_size = 100,
    effect =
    {
      productivity = 0.03,
      pollution = 0.04
    }
  },
  {
    type = "module",
    name = "fullspeed-productivity-module-3",
    localised_description = {"item-description.fullspeed-productivity-module-3"},
    icon = "__Built-in-Beacons__/graphics/icons/fullspeed-productivity-module-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module",
    category = "productivity",
    tier = 3,
    order = "a",
    stack_size = 100,
    effect =
    {
      productivity = 0.05,
      pollution = 0.05
    }
  }
})