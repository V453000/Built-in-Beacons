# Built-in Beacons
A Factorio mod. Makes crafting machines act as if they were fully beaconed.

Simulates what would Factorio look like if machines had built-in beacons.

Beaconed machines reach exactly the same speeds/productivity/power consumption/power drain/... as vanilla entities - so any calculators for ratios still work perfectly fine.

Only adds entities, does not remove or modify vanilla.

Features:
- 3 tiers of "Beaconed" machines - one tier for each vanilla speed module tier assuming maximum possible amount of beacons around the machine.
- 3 tiers of "Fullspeed productivity modules" - same as vanilla productivity modules.
- Maxspeed Beaconed assembling machine for recipes which can't use productivity modules.

- Fullspeed productivity modules give half productivity bonus compared to vanilla.
- Beaconed machines have double the amount of module slots  to reach the same maximum productivity.
- Beaconed machines cannot be influenced by other effects than productivity - so vanilla modules cannot be put in them.

Other notes:
- Mining drills and pumpjacks assume you are putting speed modules in them.
- Vanilla machines only get values to quick replace correctly to the versions from the mod, which will make their info gui say they are modded.

TODO:
- better graphics
- graphics for miner, centrifuge, rocket silo, chemical plant
- graphics and animation speeds controllable by mod settings - possibility to look like vanilla and animate as fast as vanilla

Technical limitations:
- to simulate all configurations of mixed speed+productivity modules, many machines would have to be added which is probably not worth it
- if better than integer numbers of % module precision was possible, Maxspeed beaconed machines could be simulated differently, and without adding extra entities for them (currently only Fullspeed beaconed assembling machine)
- if better than integer numbers of % module precision was possible, Fullspeed productivity module 1 and 2 would have their Pollution increase 0.5% lower.
