data:extend({
  {
    type = "recipe",
    name = "fullspeed-productivity-module",
    enabled = true,
    ingredients =
    {
      {"productivity-module-2", 5},
      {"advanced-circuit", 5},
      {"processing-unit", 5}
    },
    energy_required = 60,
    result = "fullspeed-productivity-module",
    result_count = 2
  },
})
data:extend({
  {
    type = "module",
    name = "fullspeed-productivity-module",
    localised_description = {"item-description.fullspeed-productivity-module"},
    icon = "__Absorbed-Beacons__/icons/fullspeed-productivity-module.png",
    icon_size = 32,
    subgroup = "absorbed-beacons",
    category = "productivity",
    tier = 4,
    order = "a",
    stack_size = 50,
    effect =
    {
      productivity = {bonus = 0.05}
    },
    limitation = productivity_module_limitation(),
    limitation_message_key = "production-module-usable-only-on-intermediates"
  }
})