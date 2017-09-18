# frozen_string_literal:true

require 'time'

module EditionHelper
  def show_time
    DateTime.parse(@config[:edition])
  end

  def pretty_show_time
    show_time.strftime('%d %B')
  end
end
