data:extend
{
 {
    -- Radar revealed sector distance
    type = "int-setting",
    name = "moar-radar-nearby-reveal-area",
    setting_type = "startup",
    default_value = 3,
    minimum_value = 1,
    order = "b-a"
  },
  {
    -- Radar revealed nearby sector distance
    type = "int-setting",
    name = "moar-radar-reveal-area",
    setting_type = "startup",
    default_value = 14,
    minimum_value = 1,
    order = "b-b"
  },
}