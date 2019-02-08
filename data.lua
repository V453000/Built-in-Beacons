animation_multiplier = 2
beaconed_assembling_machine_3_animation_speed = 0.15625*animation_multiplier
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
require ("prototypes.beaconed-assembling-machine-3")
require ("prototypes.fullspeed-productivity-module")