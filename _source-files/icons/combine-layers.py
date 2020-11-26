import os
from PIL import Image

input_directory = 'separate-layers'
output_directory = ''

combination_list = [
  ('beaconed-assembling-machine-64',           'tier-1'),
  ('beaconed-assembling-machine-2-64',         'tier-2'),
  ('beaconed-assembling-machine-3-64',         'tier-3'),
  ('maxspeed-beaconed-assembling-machine-3-64','tier-3'),

  ('beaconed-electric-furnace-64',            'tier-1'),
  ('beaconed-electric-furnace-2-64',          'tier-2'),
  ('beaconed-electric-furnace-3-64',          'tier-3'),
  
  ('beaconed-electric-furnace-64',            'tier-1'),
  ('beaconed-electric-furnace-2-64',          'tier-2'),
  ('beaconed-electric-furnace-3-64',          'tier-3'),

  ('beaconed-oil-refinery-64',            'tier-1'),
  ('beaconed-oil-refinery-2-64',          'tier-2'),
  ('beaconed-oil-refinery-3-64',          'tier-3'),

  ('beaconed-chemical-plant-64',          'tier-1'),
  ('beaconed-chemical-plant-2-64',        'tier-2'),
  ('beaconed-chemical-plant-3-64',        'tier-3'),

  ('beaconed-centrifuge-64',              'tier-1'),
  ('beaconed-centrifuge-2-64',            'tier-2'),
  ('beaconed-centrifuge-3-64',            'tier-3'),

  ('beaconed-lab-64',                     'tier-1'),
  ('beaconed-lab-2-64',                   'tier-2'),
  ('beaconed-lab-3-64',                   'tier-3'),

  ('beaconed-rocket-silo-64',             'tier-1'),
  ('beaconed-rocket-silo-2-64',           'tier-2'),
  ('beaconed-rocket-silo-3-64',           'tier-3'),

  ('beaconed-electric-mining-drill-64',   'tier-1'),
  ('beaconed-electric-mining-drill-2-64', 'tier-2'),
  ('beaconed-electric-mining-drill-3-64', 'tier-3'),

  ('beaconed-pumpjack-64',                'tier-1'),
  ('beaconed-pumpjack-2-64',              'tier-2'),
  ('beaconed-pumpjack-3-64',              'tier-3'),
]

for combination in combination_list:
  machine_name = combination[0] + '.png'
  tier_name = combination[1] + '.png'

  machine_path = os.path.join(input_directory, machine_name)
  tier_path = os.path.join(input_directory, tier_name)

  machine_image = Image.open(machine_path)
  tier_image = Image.open(tier_path)

  output_image = Image.new('RGBA', (machine_image.width, machine_image.height), color = (0,0,0,0))
  
  output_image = Image.alpha_composite(machine_image, tier_image)

  output_path = os.path.join(output_directory, machine_name)

  output_image.save(output_path)





