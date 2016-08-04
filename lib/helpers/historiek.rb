module HistoriekHelper
  def jaren
    items.find_all('/historiek/*.md')
  end
end
