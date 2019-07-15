data:extend
{
  {
    type = "string-setting",
    name = "modded-entity-graphics",
    setting_type = "startup",
    default_value = "ON",
    allowed_values = {"ON", "Animation speed only", "OFF"},
    order = "a"
  },
  {
    type = "int-setting",
    name = "show-module-slot-row-length",
    setting_type = "startup",
    default_value = 0,
    minimum_value = 0,
    order = "c"
  },
  {
    type = "int-setting",
    name = "show-module-slot-rows",
    setting_type = "startup",
    default_value = 2,
    minimum_value = 0,
    order = "d"
  },
}