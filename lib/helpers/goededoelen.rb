module GoedeDoelenHelper
  def goededoelen
    @items.find_all('/goededoelen/*.md')
  end
end
