'''
# ------------------------------------------------------------------------------------------
# ---   R E A D M E
# ------------------------------------------------------------------------------------------

A script which creates mipmaps from icons, and puts them to Factorio's /data/graphics/icons/mip folder.

Intended use:
1. Have .png images in the same folder as the script.
    - File names:
        - If the input file is called cargo-wagon.png, the resulting mipmap will be called cargo-wagon.png.
        - If the input file is called cargo-wagon-128.png, the -128 will be removed and the resulting mipmap will be called cargo-wagon.png.
    - Downscaling:
        - The script will automatically downscale mipmap resolutions you do not provide, with anti-aliased Bilinear. (for example if you only give 128, the script will downscale 64, 32 ,16 and 8)
    - Resolutions:
        - You can provide specific resolutions, by for example giving cargo-wagon.png (128) and cargo-wagon-32.png. Then the script will downscale 64 from 128, and 16 and 8 from 32.
2. Launch script.
    - Either Double-click the script or launch it from console to process all PNG files in the folder.
    - OR drag and drop PNG files you want to process onto the script.
    - The script will automatically ignore non-png files.
3. Outputs
    - "resized" folder
        - All of the individual icons are output in all their sizes into this folder, in case you want to use them separately for something.
    - "mip" folder
        - The result mipmap is put here.
    - "factorio/data/base/graphics/icons/mip" folder
        - The script will automatically attempt to copy into Factorio. If the path is not found, it won't copy anything and you need to copy it manually from "mip" folder to your game.
        - You can see factorio_icon_folders below and add your path, or ask me to add it for you so you can get it in future versions automatically.

Enjoy!
V453000
# ------------------------------------------------------------------------------------------
'''

import argparse
import os
import sys
import shutil
from PIL import Image

# script from 2019-08-16_15:50

# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
factorio_icon_folders = [
  'D:/Factorio-git/mods/Built-in-Beacons/graphics/icons',
]
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------
# ------------------------------------------------------------------------------------------

def for_print(label, source):
  print(label)
  for x in source:
    print(x)

def downscale(divider, input, output):
  i = Image.open(input)
  x = int(i.width/divider)
  y = int(i.height/divider)
  r = i.resize( (x,y), Image.ANTIALIAS )
  r.save(output)
  #print('Saved:', output)

def create_mipmap(output, input_64, input_32, input_16, input_8):
  i_64 = Image.open(input_64)
  i_32 = Image.open(input_32)
  i_16 = Image.open(input_16)
  i_8 = Image.open(input_8)

  mipmap = Image.new('RGBA', (120, 64), color = (0,0,0,0))
  mipmap.paste(i_64, box = (0,0))
  mipmap.paste(i_32, box = (64,0))
  mipmap.paste(i_16, box = (64+32,0))
  mipmap.paste(i_8, box = (64+32+16,0))

  mipmap.save(output)

def run():
  png = '.png'
  # --------------------------------------------------------------------------------------
  #   D E T E C T   U S E R
  # --------------------------------------------------------------------------------------
  factorio_path = ''
  user = 'Biter'
  for test_path in factorio_icon_folders:
    if os.path.isdir(test_path):
      factorio_path = test_path#os.path.join(test_path, 'mip')
      if   test_path == factorio_icon_folders[0]:
        user = 'V453000'
      else:
        user = 'Puny Human'
      break
  
  if user == 'x':
    print('Sys.argv:')
    print(sys.argv)
    print('---')

  # --------------------------------------------------------------------------------------
  #   P R O C E S S   I N P U T
  # --------------------------------------------------------------------------------------
  # process command
  dropped_files = sys.argv
  if options['file'] == None:
    if os.path.realpath(__file__) in dropped_files:
      dropped_files.remove(os.path.realpath(__file__))
  else:
    dropped_files = options['file']

  # if no arguments given, search for all .png in folder, and put them to dropped_files
  if dropped_files == []:
    #print('No input given, searching for files...')
    for f in os.listdir():
      if os.path.isfile(f) == True:
        appendix = png
        if f[-len(appendix):].lower() == appendix:
          #print('PNG found!', f)
          dropped_files.append(f)

  # if there is no arguments given or any .png present, create an empty list instead
  if dropped_files == []:
    print('Found no PNGs to be processed.')


  # --------------------------------------------------------------------------------------
  #   D I C T I O N A R Y   C R E A T I O N
  # --------------------------------------------------------------------------------------
  # create dictionary with matching icon base names and custom-defined resizes
  dropped_dict = {}
  for dropped_file in dropped_files:
    appendix = png
    if dropped_file[-len(appendix):].lower() == appendix:
      dropped_file = dropped_file[:-len(appendix)]

    #print('Examining...', dropped_file)

    w3 = dropped_file[-3:]
    w2 = dropped_file[-2:]
    w1 = dropped_file[-1:]

    family_name = ''
    found_size = '128'

    # read the end of the thing
    # check for 128
    if w3 == '128':
      family_name = dropped_file[:-3]
      e = family_name[-1:]
      if e == '-' or e == '_' or e == ' ':
        family_name = dropped_file[:-4]
      found_size = '128'
    # check for 64
    elif w2 == '64':
      family_name = dropped_file[:-2]
      e = family_name[-1:]
      if e == '-' or e == '_' or e == ' ':
        family_name = dropped_file[:-3]
      found_size = '64'
    # check for 32
    elif w2 == '32':
      family_name = dropped_file[:-2]
      e = family_name[-1:]
      if e == '-' or e == '_' or e == ' ':
        family_name = dropped_file[:-3]
      found_size = '32'
    # check for 16
    elif w2 == '16':
      family_name = dropped_file[:-2]
      e = family_name[-1:]
      if e == '-' or e == '_' or e == ' ':
        family_name = dropped_file[:-3]
      found_size = '16'
    # check for 8
    elif w1 == '8':
      family_name = dropped_file[:-1]
      e = family_name[-1:]
      if e == '-' or e == '_' or e == ' ':
        family_name = dropped_file[:-2]
      found_size = '8'
    # if nothing matches, just keep the file
    else:
      family_name = dropped_file
    
    #print(family_name, found_size)
    # categorize into dictionary
    if family_name not in dropped_dict:
      dropped_dict[family_name] = {}

    dropped_dict[family_name][found_size] = dropped_file 
  #print(dropped_dict)
  

  # --------------------------------------------------------------------------------------
  #   R U N   P R O C E S S
  # --------------------------------------------------------------------------------------
  # run process for each given input
  for family in dropped_dict.items():
    family_name = family[0]
    #print('Family name:', family_name)
    family_keys = family[1]
    #print('Family keys:', family_keys)
    # define output paths
    base_folder = os.path.dirname(family_name + png)
    resized_folder_name = 'resized'
    resized_folder = os.path.join(base_folder, resized_folder_name)
    os.makedirs(resized_folder, exist_ok = True)
    output_128 = os.path.join(resized_folder, family_name + '-128' + png)
    output_64 =  os.path.join(resized_folder, family_name +  '-64' + png)
    output_32 =  os.path.join(resized_folder, family_name +  '-32' + png)
    output_16 =  os.path.join(resized_folder, family_name +  '-16' + png)
    output_8  =  os.path.join(resized_folder, family_name +   '-8' + png)


    # --------------------------------------------------------------------------------------
    # check if output exists, if not, create an empty image instead.
    # --------------------------------------------------------------------------------------
    if '128' not in family_keys:
      i = Image.new('RGBA', (128, 128), color = (0,0,0,0))
      i.save(output_128)
    if '64' not in family_keys:
      i = Image.new('RGBA', (128, 128), color = (0,0,0,0))
      i.save(output_64)
    if '32' not in family_keys:
      i = Image.new('RGBA', (128, 128), color = (0,0,0,0))
      i.save(output_32)
    if '16' not in family_keys:
      i = Image.new('RGBA', (128, 128), color = (0,0,0,0))
      i.save(output_16)
    if '8' not in family_keys:
      i = Image.new('RGBA', (128, 128), color = (0,0,0,0))
      i.save(output_16)
    # --------------------------------------------------------------------------------------
    # --------------------------------------------------------------------------------------
    # --------------------------------------------------------------------------------------
    
    # --------------------------------------------------------------------------------------
    # check if a resolution is in family, and downscale the ones that aren't
    # --------------------------------------------------------------------------------------
    if '128' in family_keys:
      # discard image if it's incorrect size
      if Image.open(family_keys['128'] + png).width != 128:
        i = Image.new('RGBA', (128, 128), color = (0,0,0,0))
        i.save(output_128)
        print('!!!', family_keys['128'] + png, 'has incorrect size !!!')
      # otherwise proceed
      else:
        #print(family_keys['128'])
        downscale(1, family_keys['128'] + png, output_128)
        if '64' not in family_keys:
          downscale(2, family_keys['128'] + png, output_64)
          if '32' not in family_keys:
            downscale(2, output_64, output_32)
            if '32' not in family_keys:
              downscale(2, output_32, output_16)
              if '32' not in family_keys:
                downscale(2, output_16, output_8)
    # --------------------------------------------------------------------------------------
    if '64' in family_keys:
      # discard image if it's incorrect size
      if Image.open(family_keys['64'] + png).width != 64:
        i = Image.new('RGBA', (64, 64), color = (0,0,0,0))
        i.save(output_64)
        print('!!!', family_keys['64'] + png, 'has incorrect size !!!')
      # otherwise proceed
      else:
        downscale(1, family_keys['64'] + png, output_64)
        if '32' not in family_keys:
          downscale(2, family_keys['64'] + png, output_32)
          if '16' not in family_keys:
            downscale(2, output_32, output_16)
            if '8' not in family_keys:
              downscale(2, output_16, output_8)
    # --------------------------------------------------------------------------------------
    if '32' in family_keys:
      # discard image if it's incorrect size
      if Image.open(family_keys['32'] + png).width != 32:
        i = Image.new('RGBA', (32, 32), color = (0,0,0,0))
        i.save(output_32)
        print('!!!', family_keys['32'], 'has incorrect size !!!')
      # otherwise proceed
      else:
        downscale(1, family_keys['32'] + png, output_32)
        if '16' not in family_keys:
          downscale(2, family_keys['32'] + png, output_16)
          if '8' not in family_keys:
            downscale(2, output_16, output_8)
    # --------------------------------------------------------------------------------------
    if '16' in family_keys:
      # discard image if it's incorrect size
      if Image.open(family_keys['16'] + png).width != 16:
        i = Image.new('RGBA', (16, 16), color = (0,0,0,0))
        i.save(output_16)
        print('!!!', family_keys['16'], 'has incorrect size !!!')
      # otherwise proceed
      else:
        downscale(1, family_keys['16'] + png, output_16)
        if '8' not in family_keys:
          downscale(2, family_keys['16'] + png, output_8)
    # --------------------------------------------------------------------------------------
    if '8' in family_keys:
      # discard image if it's incorrect size
      if Image.open(family_keys['8'] + png).width != 8:
        i = Image.new('RGBA', (8, 8), color = (0,0,0,0))
        i.save(output_8)
        print('!!!', family_keys['8'], 'has incorrect size !!!')
      # otherwise proceed
      else:
        downscale(1, family_keys['8'] + png, output_8)
    # --------------------------------------------------------------------------------------
    # --------------------------------------------------------------------------------------
    # --------------------------------------------------------------------------------------


    # --------------------------------------------------------------------------------------
    #   C R E A T E   M I P M A P
    # --------------------------------------------------------------------------------------
    # make sure mipmap folder exists
    mipmap_folder = os.path.join(base_folder, 'mip')
    os.makedirs(mipmap_folder, exist_ok = True)
    mipmap_name = family_name
    mipmap_path = os.path.join( mipmap_folder, mipmap_name )
    create_mipmap(mipmap_path + png, output_64, output_32, output_16, output_8)


    # copy to Factorio
    if factorio_path != '':
      factorio_mipmap_path = os.path.join(factorio_path, mipmap_name)
      os.makedirs(factorio_path, exist_ok = True)
      shutil.copy(mipmap_path + png, factorio_mipmap_path + png )
      print('Copied mipmap', mipmap_name + png, 'to Factorio.')
    else:
      print("Can't find Factorio folder, not copying mipmaps to Factorio.")

  if dropped_files == []:
    input('FEED PNG IN ME PLEASE, ' + user + '!')
  else:
    input('Have a nice day, ' + user + '!')









if __name__ == '__main__':
  if len(sys.argv) >= 2 and sys.argv[1] == '-f':
    parser = argparse.ArgumentParser(description = 'Process some arguments.')
    parser.add_argument('-f','--file',
                        help='Input file to resize.'
                        )
    options = vars(parser.parse_args())
    default_values = [
      ('folder', '')
    ]
    for name, def_value in default_values:
      if not options[name]:
        options[name] = def_value
  else:
    options = {
      'file': None
    }
  run()
