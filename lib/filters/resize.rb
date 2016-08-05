require 'mini_magick'

class ResizeFilter < Nanoc::Filter
  identifier :resize
  type :binary

  def run(filename, size: '90x90^', **params)
    puts "processing image #{filename}"
    img = MiniMagick::Image.open(filename)
    img.resize(size)
    img.format('jpg')
    img.gravity('Center')
    img.crop '90x90+0+0'
    # img.repage
    img.write(output_filename)
  end
end
