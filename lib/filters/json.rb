Nanoc::Filter.define(:json) do |content, content_identifier: :content, **h|
  {
    content_identifier => content
  }.update(h).to_json.encode('Windows-1252').force_encoding('UTF-8')
end
