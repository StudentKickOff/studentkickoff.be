module ArtistHelper
  def artists
    items.find_all('/artists/*.md').sort { |x, y| y[:start] <=> x[:start] }
  end
end
