module ArtistHelper
  def artists
    items.find_all('/artists/*.md')
  end
end
