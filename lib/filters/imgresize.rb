# frozen_string_literal: true
require 'mini_magick'

class ImgResizeFilter < Nanoc::Filter
  identifier :img_resize
  type :binary

  def run(filename, **params)
    img = MiniMagick::Image.open(filename)

    size = params[:size]

    # Cropping
    img.resize "#{size}^"
    img.crop "#{size}+0+0"
    img.gravity 'Center'

    img.write(output_filename)
  end
end
