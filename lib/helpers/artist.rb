module ArtistHelper
  def artists
    items.find_all('/artists/*/*.md').sort_by { |artist| artist[:start] }
  end

  def pretty_time(t)
    t.strftime '%Hu%M'
  end
end
