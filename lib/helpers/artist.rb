module ArtistHelper
  def mainstageartists
    items.find_all('/artists/Main Stage/*.md').sort_by { |artist| artist[:start] }
  end

  def secondstageartists
    items.find_all('/artists/Second Stage/*.md').sort_by { |artist| artist[:start] }
  end

  def artists
  	mainstageartists + secondstageartists
  end

  def pretty_time(t)
    t.strftime '%Hu%M'
  end
end
