require 'mini_magick'

class ImgCompressFilter < Nanoc::Filter
  identifier :img_compress
  type :binary

  def run(filename, **_params)
    img = MiniMagick::Image.open(filename)

    # Compressing
    img.sampling_factor '4:2:0'
    img.strip
    img.quality '85'
    img.interlace 'JPEG'
    img.colorspace 'RGB'

    img.write(output_filename)
  end
end
