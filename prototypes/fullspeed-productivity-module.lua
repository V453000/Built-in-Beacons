-- R E C I P E S
data:extend({
  {
    type = "recipe",
    name = "fullspeed-productivity-module",
    enabled = true,
    ingredients =
    {
      {"electronic-circuit", 5},
      {"advanced-circuit", 5}
    },
    energy_required = 15,
    result = "fullspeed-productivity-module",
    result_count = 2
  },
  {
    type = "recipe",
    name = "fullspeed-productivity-module-2",
    enabled = true,
    ingredients =
    {
      {"fullspeed-productivity-module", 10},
      {"advanced-circuit", 5},
      {"processing-unit", 5}
    },
    energy_required = 30,
    result = "fullspeed-productivity-module-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "fullspeed-productivity-module-3",
    enabled = true,
    ingredients =
    {
      {"fullspeed-productivity-module-2", 10},
      {"advanced-circuit", 5},
      {"processing-unit", 5}
    },
    energy_required = 60,
    result = "fullspeed-productivity-module-3",
    result_count = 2
  },
})
-- I T E M S
data:extend({
  {
    type = "module",
    name = "fullspeed-productivity-module",
    localised_description = {"item-description.fullspeed-productivity-module"},
    icon = "__Absorbed-Beacons__/icons/fullspeed-productivity-module.png",
    icon_size = 32,
    subgroup = "absorbed-beacons",
    category = "productivity",
    tier = 1,
    order = "a",
    stack_size = 50,
    effect =
    {
      productivity = {bonus = 0.02}
    },
    limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "fullspeed-productivity-module-2",
    localised_description = {"item-description.fullspeed-productivity-module-2"},
    icon = "__Absorbed-Beacons__/icons/fullspeed-productivity-module-2.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-2",
    category = "productivity",
    tier = 2,
    order = "a",
    stack_size = 50,
    effect =
    {
      productivity = {bonus = 0.03}
    },
    limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  {
    type = "module",
    name = "fullspeed-productivity-module-3",
    localised_description = {"item-description.fullspeed-productivity-module-3"},
    icon = "__Absorbed-Beacons__/icons/fullspeed-productivity-module-3.png",
    icon_size = 32,
    subgroup = "absorbed-beacons-3",
    category = "productivity",
    tier = 3,
    order = "a",
    stack_size = 50,
    effect =
    {
      productivity = {bonus = 0.05}
    },
    limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  },
})