module ArtistHelper
  def artists_for(stage, edition = show_time.year)
    @items.find_all("/artists/#{edition}/#{stage}/*.md").sort_by { |artist| artist[:start] }
  end

  def artists(edition = show_time.year)
    @items.find_all("/artists/#{edition}/**/*.md").sort_by { |artist| artist[:start] }
  end

  def pretty_time(t)
    t.strftime '%Hu%M'
  end
end
