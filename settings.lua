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
    name = "beacons-for-assembling-machine",
    setting_type = "startup",
    default_value = 12,
    allowed_values = {12,10,8,4},
    order = "b-a"
  },
  {
    type = "int-setting",
    name = "beacons-for-electric-furnace",
    setting_type = "startup",
    default_value = 12,
    allowed_values = {12,10,8,4},
    order = "b-b"
  },
  {
    type = "int-setting",
    name = "beacons-for-lab",
    setting_type = "startup",
    default_value = 12,
    allowed_values = {12,10,8,4},
    order = "b-c"
  },
  {
    type = "int-setting",
    name = "beacons-for-centrifuge",
    setting_type = "startup",
    default_value = 12,
    allowed_values = {12,10,8,4},
    order = "b-d"
  },
  {
    type = "int-setting",
    name = "beacons-for-chemical-plant",
    setting_type = "startup",
    default_value = 12,
    allowed_values = {12,10,8,4},
    order = "b-e"
  },
  {
    type = "int-setting",
    name = "beacons-for-oil-refinery",
    setting_type = "startup",
    default_value = 16,
    allowed_values = {16,13,10,5},
    order = "b-f"
  },
  {
    type = "int-setting",
    name = "beacons-for-mining-drill",
    setting_type = "startup",
    default_value = 4,
    allowed_values = {8,4},
    order = "b-g"
  },
  {
    type = "int-setting",
    name = "beacons-for-pumpjack",
    setting_type = "startup",
    default_value = 4,
    allowed_values = {8,4},
    order = "b-h"
  },
  {
    type = "int-setting",
    name = "beacons-for-pumpjack",
    setting_type = "startup",
    default_value = 4,
    allowed_values = {8,4},
    order = "b-i"
  },
  {
    type = "int-setting",
    name = "beacons-for-rocket-silo",
    setting_type = "startup",
    default_value = 20,
    allowed_values = {20,12},
    order = "b-j"
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