import os
from PIL import Image

def make_mipmap(filepath):
    i = Image.open(filepath)
    
    double_width   = int(i.width  * 2)
    double_height  = int(i.height * 2)
    i_width        = int(i.width  * 1)
    i_height       = int(i.height * 1)
    half_width     = int(i.width  / 2)
    half_height    = int(i.height / 2)
    quarter_width  = int(i.width  / 4)
    quarter_height = int(i.height / 4)

    double  = i.resize( (double_width , double_height  ), Image.ANTIALIAS )
    half    = i.resize( (half_width   , half_height    ), Image.ANTIALIAS )
    quarter = i.resize( (quarter_width, quarter_height ), Image.ANTIALIAS )

    mipmap_width = double_width + i_width + half_width + quarter_width
    mipmap_height = double_height

    mipmap = Image.new('RGBA', (mipmap_width, mipmap_height), color = (0,0,0,0))
    mipmap.paste(double, box = (0, 0) )
    mipmap.paste(i, box = (double_width, 0) )
    mipmap.paste(half, box = (double_width + i_width, 0) )
    mipmap.paste(quarter, box = (double_width + i_width + half_width, 0) )
    
    i.close()
    mipmap.save(filepath)




input_directories = [
    'icons'
]

for input_directory in input_directories:
    for root, dirs, files in os.walk(input_directory):
        for f in files:
            f_path = os.path.join(root, f)
            if 'mip' not in f_path:
                #print(f_path)

                # test if image size is 32
                i = Image.open(f_path)
                if i.width != 32 or i.height != 32:
                    a = 0
                    #print(f_path, 'IS NOT 32x32')
                else:
                    print(f_path)
                    make_mipmap(f_path)
