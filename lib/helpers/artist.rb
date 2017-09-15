module ArtistHelper
  def artists_for(stage, edition = @config[:edition])
    @items.find_all("/artists/#{edition}/#{stage}/*.md").sort_by { |artist| artist[:start] }
  end

  def artists(edition: @config[:edition])
    @items.find_all("/artists/#{edition}/**/*.md")
  end

  def pretty_time(t)
    t.strftime '%Hu%M'
  end
end
