module ArtistHelper
  def artists_for(stage, edition = show_time.year)
    #when there is no time specified, append the artists last
    @notNil = @items.find_all("/artists/#{edition}/#{stage}/*.md").select {|artist| artist[:start] }.sort_by { |artist| artist[:start] }
    @nilValues = @items.find_all("/artists/#{edition}/#{stage}/*.md").select {|artist| artist[:start].nil? }
    @notNil+@nilValues
  end

  def artists(edition = show_time.year)
    @notNil = @items.find_all("/artists/#{edition}/**/*.md").select {|artist| artist[:start] }.sort_by { |artist| artist[:start] }
    @nilValues = @items.find_all("/artists/#{edition}/**/*.md").select {|artist| artist[:start].nil? }
    @notNil+@nilValues
  end

  def pretty_time(t)
    t.strftime '%Hu%M'
  end
end
