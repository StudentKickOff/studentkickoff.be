# frozen_string_literal: true
require 'mini_magick'

class ImgResizeFilter < Nanoc::Filter
  identifier :img_resize
  type :binary

  def run(filename, **params)
    size = params[:size]

    MiniMagick::Tool::Convert.new do |convert|
      convert << filename

      convert.resize "#{size}^"
      convert.gravity 'Center'
      convert.crop "#{size}+0+0"
      convert.repage.+

      convert << output_filename
    end
  end
end
