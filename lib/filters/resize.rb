require 'mini_magick'

class ResizeFilter < Nanoc::Filter
  identifier :resize
  type :binary

  def run(filename, size: '150x150^', **params)
    puts "processing image #{filename}"
    img = MiniMagick::Image.open(filename)

    # Cropping
    img.resize(size)
    img.gravity('Center')
    img.crop '150x150+0+0'

    # Compressing
    img.sampling_factor '4:2:0'
    img.strip
    img.quality '85'
    img.interlace 'JPEG'
    img.colorspace 'RGB'

    img.write(output_filename)
  end
end
