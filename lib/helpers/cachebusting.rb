module CacheBustingHelper
  def cache_busted_path(s, *_)
    item = @items[s]

    fp = Digest::MD5.hexdigest(item.compiled_content)[0..8]

    "#{item.identifier.without_ext}-#{fp}.css"
  end
end
