module HistoriekHelper
  def jaren
    items.find_all('/historiek/*.md').sort { |x, y| y[:jaar] <=> x[:jaar] }
  end
end
